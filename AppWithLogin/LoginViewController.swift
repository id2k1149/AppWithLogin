//
//  ViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/30/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let userName = "User"
    private let password = "password"

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.minValue = minValueLabel.text
           }

    @IBAction func logInButtonTapped() {
//        if userNameTF == userName && passwordTF == password {
//
//        }
    }
    
}

