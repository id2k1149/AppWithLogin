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
                userName: "User_1",
                 password: "pass_1",
                 firstName: "Name_1",
                 lastName: "LastName_1",
                 email: "mail_1@mail.mail"
            ),
            User(
                userName: "User_2",
                 password: "pass_2",
                 firstName: "Name_2",
                 lastName: "LastName_2",
                 email: "mail_2@mail.mail"
            ),
            User(
                userName: "User_3",
                 password: "pass_3",
                 firstName: "Name_3",
                 lastName: "LastName_3",
                 email: "mail_3@mail.mail"
            ),
        ]
    }
}
