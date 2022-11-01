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
    static func getMovies() -> [Movie] {
        [
            Movie(
                id: 1,
                title: "Saving Private Ryan",
                year: 1998
            ),
            Movie(
                id: 2,
                title: "Godzilla",
                year: 2014
            )
        ]
    }
}