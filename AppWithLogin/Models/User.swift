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
    let photo: String
    let info: String
    let movies: [Movie]
}

extension User {
    static func getUsers() -> [User] {
        [
            User(
                id: 1,
                login: "User1",
                password: "pass1",
                firstName: "Walter",
                lastName: "White",
                photo: "Walter_White",
                info: "Walter was a skilled chemist and co-founder of a technology firm before he accepted a buy-out from his partners. Walt became a high-school chemistry teacher in Albuquerque, and barely making ends meet with his family with wife Skyler (Anna Gunn) and son Walt Jr. (RJ Mitte). At the start of the series, the day after his 50th birthday, Walt is diagnosed with Stage III lung cancer.",
                movies: getMovies(ids: [1, 2])
            ),
            User(
                id: 2,
                login: "User2",
                password: "pass2",
                firstName: "Jesse",
                lastName: "Pinkman",
                photo: "Jesse_Pinkman",
                info: "Jesse Bruce Pinkman was born into a middle-class family in Albuquerque, New Mexico. He has long been estranged from his parents due to his drug addiction and lifestyle as a drug dealer. After being forced to leave his parents' residence, Jesse moved in with his Aunt Ginny, for whom he cared until her death from cancer. Afterward, he was allowed to stay in her home, the ownership of which fell to Jesse's parents.",
                movies: getMovies(ids: [3, 4])
            ),
            User(
                id: 3,
                login: "User3",
                password: "pass3",
                firstName: "Name_3",
                lastName: "LastName_3",
                photo: "image_3",
                info: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                movies: []
            ),
        ]
    }
}

let movies = Movie.getMovies()
func getMovies(ids: [Int]) -> [Movie] {
    var actorMovies: [Movie] = []
    for movie in movies {
        if ids.contains(movie.id) {
            actorMovies.append(movie)
        }
    }
    return actorMovies
}
