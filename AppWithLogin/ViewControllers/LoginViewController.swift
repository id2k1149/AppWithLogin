//
//  ViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/30/22.

//1. Аутлеты
//2. Публичные свойства
//3. Приватные свойства
//4. Переопределенные геттеры
//5. Инициализаторы
//6. Методы переопределения род класса
//7. AB Action методы
//8. Публичные методы класса
//9. Приватные методы
//

import UIKit

// final - !!!
final class LoginViewController: UIViewController {
    
    //MARK: @IBOutlet vars
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let users = User.getUsers()
   
    //MARK: override functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
           }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: @IBAction functions
    @IBAction func logInButtonTapped() {
        if userNameTF.text != users.first?.userName || passwordTF.text != users.first?.password {
            passwordTF.text = ""
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        // forget buttons need to have tags
        sender.tag == 0
        ? showAlert(with: "Oops!", and: "Your name is \(users.first?.userName ?? "???") 😉")
        : showAlert(with: "Oops!", and: "Your password is \(users.first?.password ?? "???") 😉")
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
