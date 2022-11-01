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
        
        imageView.image = UIImage(named: user.photo)
        
        nameLabel.text = user.firstName
        surnameLabel.text = user.lastName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let editVC = segue.destination as? EditViewController else { return }
        editVC.name = nameLabel.text
        editVC.surname = surnameLabel.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let editVC = segue.source as? EditViewController else { return }
        nameLabel.text = editVC.nameTF.text
        user.firstName = nameLabel.text ?? user.firstName
        surnameLabel.text = editVC.surnameTF.text
        user.lastName = surnameLabel.text ?? user.lastName
    }
}

