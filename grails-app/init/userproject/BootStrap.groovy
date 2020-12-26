package userproject

import com.shoaib.User

class BootStrap {

    def init = { servletContext ->
        User.initialize();
    }
    def destroy = {
    }
}
