package com.shoaib

class User {

    Date creationDate
    Date modifiedDate

    String firstName
    String lastName
    String fullName
    String mobileNo
    String email
    String address
    String credential
    Date dateOfBirth
    String status

    static mapping = {
        table("user")
        version false
    }

    String toString() {
        return fullName
    }
    static constraints = {
        creationDate nullable: true
        modifiedDate nullable: true

        firstName nullable: true
        lastName nullable: true
        fullName nullable: true
        mobileNo unique: true, nullable: true
        email unique: true, nullable: false
        address nullable: true
        credential unique: false, nullable: false
        dateOfBirth nullable: true
        status nullable: true
    }

    static initialize() {
        def insertSql = [
                ['Admin', 'User', 'Admin User', '01700000000', 'admin@localhost.local', 'minad', 'Admin']
        ]

        if ((User.count() != insertSql.size())) {
            insertSql.each {
                if (User.findByEmail(it[4]) == null) {
                    new User(firstName: it[0], lastName: it[1], fullName: it[2], mobileNo: it[3], email: it[4], credential: it[5], dateOfBirth: new Date(), status: it[6]).save(flush: true)
                }
            }
        }
    }
}
