package com.shoaib

import utils.DateUtils

class AuthenticationController {

    UserService userService;
    def index() {
        render (view: 'login')
    }

    def login() {
        def user = User.findByEmail(params?.email)
        String pass = params?.password;

        if(user) {
           String decPass = userService.rightrotate(user?.credential, 2);
            if(pass.equals(decPass)) {
                session.user = user
                flash.message = "Hello ${user.fullName}"
                redirect(action: "dashBoard")
            }  else {
                flash.error = "Sorry! Incorrect Email or Password"
                redirect(action:"index")
            }
        }
        else {
            flash.error = "Sorry! Incorrect Email or Password"
            redirect(action:"index")
        }
    }

    def logout() {
        session.invalidate();
        redirect(action: "index")
    }

    def dashBoard() {
        User user = session.user;
        if(user) {
            List<User> userList = User.findAllByStatus('A');
            String date = DateUtils.getFromattedDateStringFromDate(new Date(), "MMM d, yyyy")
            render(view: 'dashBoard', model: [user: user, total: userList.size(), date: date])
        } else {
            redirect(action: "index")
        }

    }
}
