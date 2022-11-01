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

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "\(user.firstName) \(user.lastName)"
        userInfoLabel.text = user.info
    }
}
