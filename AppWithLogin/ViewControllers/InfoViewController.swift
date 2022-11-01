//
//  InfoViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var userInfoLabel: UILabel!
    
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
        
        fullNameLabel.text = "\(user.firstName) \(user.lastName)"
        userInfoLabel.text = user.info
    }
}
