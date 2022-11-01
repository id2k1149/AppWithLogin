//
//  UserViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for each in user.movies {
            nameLabel.text! += "\(each.year) \(each.title) \n"
        }
    }

    

}
