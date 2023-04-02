//
//  ViewController.swift
//  LoginApp
//
//  Created by kramonex on 01.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
//     Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeTextName += userName.text ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userName.text = ""
        password.text = ""
    }
    

    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if userName.text == "User" && password.text == "12345" {
        } else {
            showAlert(withTitle: "Invalid login or password ",
                      andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Ooops!", andMessage: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Ooops!", andMessage: "Your password is 12345 😉")
    }
    
    
    private func showAlert(withTitle title: String, andMessage message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.password.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

