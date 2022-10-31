//
//  User.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

struct User {
    let id: Int
    let login: String
    let password: String
    let firstName: String
    let lastName: String
    let info: String
    let employer: Company
}

extension User {
    static func getUsers() -> [User] {
        [
            User(
                id: 1,
                login: "User1",
                password: "pass1",
                firstName: "Name_1",
                lastName: "LastName_1",
                info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                employer: getRandomCompany(companies: Company.getCompanies())
            ),
            User(
                id: 2,
                login: "User2",
                password: "pass2",
                firstName: "Name_2",
                lastName: "LastName_2",
                info: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                employer: getRandomCompany(companies: Company.getCompanies())
            ),
            User(
                id: 3,
                login: "User3",
                password: "pass3",
                firstName: "Name_3",
                lastName: "LastName_3",
                info: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                employer: getRandomCompany(companies: Company.getCompanies())
            ),
        ]
    }
}

func getRandomCompany(companies: [Company]) -> Company {
    companies[Int.random(in: 0..<companies.count)]
}
