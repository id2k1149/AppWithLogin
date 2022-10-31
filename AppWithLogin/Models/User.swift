//
//  User.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

struct User {
    let userName: String
    let password: String
    let firstName: String
    let lastName: String
    let email: String
}

extension User {
    static func getUsers() -> [User] {
        [
            User(
                userName: "User1",
                 password: "pass1",
                 firstName: "Name_1",
                 lastName: "LastName_1",
                 email: "mail_1@mail.mail"
            ),
            User(
                userName: "User2",
                 password: "pass2",
                 firstName: "Name_2",
                 lastName: "LastName_2",
                 email: "mail_2@mail.mail"
            ),
            User(
                userName: "User3",
                 password: "pass3",
                 firstName: "Name_3",
                 lastName: "LastName_3",
                 email: "mail_3@mail.mail"
            ),
        ]
    }
}
