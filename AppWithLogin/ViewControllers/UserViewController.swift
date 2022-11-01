//
//  UserViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: user.photo)
        
        nameLabel.text = user.firstName
        surnameLabel.text = user.lastName
    }
}
