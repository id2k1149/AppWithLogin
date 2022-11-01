//
//  MovieViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 11/1/22.
//

import UIKit

class MovieViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var moviesLabel: UILabel!
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "with \(user.firstName) \(user.lastName)"
        moviesLabel.text = ""
        for each in user.movies {
            moviesLabel.text! += "\(each.year) \(each.title) \n"
        }
    }
}
