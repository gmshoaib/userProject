package com.shoaib

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {
    UserService userService;

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def user = session.user
        if(user) {
            List<User> userList = User.findAllByStatus('A');
            render(view: 'index', model: [userList: userList])
        } else {
            redirect(controller: 'authentication', action: 'index')
        }
    }

    def show(User user) {
        respond user
    }
    def profile() {
        def user = session.user;
        if(user) {
            render(view: 'show', model: [user: user])
        } else {
            redirect(controller: 'authentication', action: 'index')
        }
    }

    def create() {
        render(view: "create", model: [errors: chainModel?.errors, user: chainModel?.user])
    }

    def signUp() {
        render (view: 'signUp', model: [errors: chainModel?.errors, user: chainModel?.user])
    }

    def changePassword() {
        render(view: 'changePassword');
    }

    def savePassword() {
        User sessionUser = session.user;

        if(sessionUser) {
            User user = User.findById(sessionUser?.id)
            String prevPass = userService.rightrotate(user.credential, 2);
            if(prevPass.equals(params?.previousPassWord)) {
                String newPass = params?.newPassWord;
                String confPass = params?.confirmPassWord;
                if(newPass.equals(confPass)) {
                    String newPasd = userService.leftrotate(newPass, 2);
                    user.credential = newPasd;
                    user.save(flush: true)
                    redirect(controller: 'authentication', action: 'dashBoard')
                } else {
                    flash.error = "Sorry! New password and confirm password not matched!!";
                    redirect(action:"changePassword");
                    return;
                }
            } else {
                flash.error = "Sorry! Password not matched!!";
                redirect(action:"changePassword");
                return;
            }
        } else {
            redirect(controller: 'authentication', action: 'index')
        }
    }

    @Transactional
    def save() {
        User user
        if(userService?.emailValidator(params)) {
            flash.error = "Sorry! Email already exists!!";
            redirect(action:"signUp");
            return;
        }

        if(userService?.mobileValidator(params)) {
            flash.error = "Sorry! Phone No already exists!!";
            redirect(action:"signUp");
            return;
        }

        user = userService.returnUser(params);
        if (user == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (user.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond user.errors, view:'signUp'
            return
        }

        if(user.save(flush: true)){
            flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
            redirect (controller: 'authentication', action: 'index')
        } else {
            flash.error = "Sorry! Data not saved!!";
            redirect(action: "signUp");
            return;
        }
    }

    def edit(User user) {
        respond user
    }

    @Transactional
    def update(User user) {
        if (user == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (user.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond user.errors, view:'edit'
            return
        }

        user.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    @Transactional
    def delete(User user) {

        if (user == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        user.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
