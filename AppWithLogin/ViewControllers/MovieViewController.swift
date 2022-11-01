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
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        // add gradient
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        fullNameLabel.text = "with \(user.firstName) \(user.lastName)"
        moviesLabel.text = ""
        for each in user.movies {
            moviesLabel.text! += "\(each.year) \(each.title) \n"
        }
    }
}
