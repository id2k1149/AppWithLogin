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
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.minValue = minValueLabel.text
           }

    @IBAction func logInButtonTapped() {
//        if userNameTF == userName && passwordTF == password {
//
//        }
    }
    
    
    @IBAction func forgotName() {
        showAlert(with: "Oops!", and: "Your name is User 😀")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is password 😀")
    }
}

// MARK: UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

