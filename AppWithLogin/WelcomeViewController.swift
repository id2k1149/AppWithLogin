//
//  WelcomeViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/30/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "user")!"
    }
    
}
