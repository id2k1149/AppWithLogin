//
//  MovieViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 11/1/22.
//

import UIKit

class MovieViewController: UIViewController {
    
    @IBOutlet var moviesLabel: UILabel!
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesLabel.text = ""
        for each in user.movies {
            moviesLabel.text! += "\(each.year) \(each.title) \n"
        }
    }
}
