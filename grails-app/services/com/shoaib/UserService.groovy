package com.shoaib

import grails.transaction.Transactional
import utils.DateUtils

@Transactional
class UserService {
    def serviceMethod() {

    }

    def emailValidator(def params) {
        if(params?.email) {
            String email = User?.findByEmail(params?.email)?.email;
            if(email) {
                return true;
            } else {
                return false;
            }
        }
    }

    def mobileValidator(def params) {
        if(params?.mobileNo) {
            String mobileNo = User?.findByMobileNo(params?.mobileNo)?.mobileNo;
            if(mobileNo) {
                return true;
            } else {
                return false;
            }
        }
    }

    def returnUser(def params) {
        User user = new User()

        user.creationDate = new Date()
        user.firstName = params?.firstName;
        user.lastName = params?.lastName;
        user.fullName = params?.firstName +" "+params?.lastName;
        user.address = params?.address
        user.mobileNo = params?.mobileNo
        user.email = params?.email
        user.dateOfBirth = DateUtils.getDateFromDateString(params?.dateOfBirth, 'yyyy-mm-dd');
        user.credential = leftrotate(params?.passWord, 2);
        user.status = 'A'

        if(user.validate()) {
            return user;
        } else {
            return null;
        }
    }

    public def leftrotate(String str, int d) {
        String ans = str.substring(d) + str.substring(0, d);
        return ans;
    }

    // function that rotates s towards right by d
    def rightrotate(String str, int d) {
        return leftrotate(str, str.length() - d);
    }
}
