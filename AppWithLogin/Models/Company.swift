//
//  Company.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

struct Company {
    let id: Int
    let title: String
    let info: String
}

extension Company {
    static func getCompanies() -> [Company] {
        [
            Company(
                id: 1,
                title: "Company_1",
                info: "Duis mattis erat felis, sit amet vehicula sapien dictum non. Aliquam a risus id libero varius volutpat."
            ),
            Company(
                id: 2,
                title: "Company_2",
                info: "Etiam rhoncus, libero sit amet lacinia sagittis, quam ante convallis libero, non vestibulum lacus nisi ut ante."
            )
        ]
    }
}
