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

    //MARK: @IBOutlet
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
           }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    
    //MARK: @IBAction
    @IBAction func logInButtonTapped() {
        if userNameTF.text != userName || passwordTF.text != password {
            passwordTF.text = ""
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotName() {
        showAlert(with: "Oops!", and: "Your name is User 😀")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is password 😀")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
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

