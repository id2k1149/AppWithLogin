//
//  Movie.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

struct Movie {
    let id: Int
    let title: String
    let year: Int
}

extension Movie {
    static func getCompanies() -> [Movie] {
        [
            Movie(
                id: 1,
                title: "Company_1",
                year: 1995
            ),
            Movie(
                id: 2,
                title: "Company_2",
                year: 2001
            )
        ]
    }
}
