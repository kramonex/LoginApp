//
//  ViewController.swift
//  LoginApp
//
//  Created by kramonex on 01.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "User"
    private let password = "12345"
    
    
//     Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    //MARK: methods for segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeTextName = user
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: methods for button
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == "User", passwordTF.text == "12345" else {
            showAlert(
                title: "Invalid login or password ",
                message: "Please, enter correct login and password"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNameButtonTapped(_ : UIButton) {
        showAlert(title: "Ooops!", message: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ : UIButton) {
        showAlert(title: "Ooops!", message: "Your password is \(password) 😉")
    }
    
    //MARK: methods for alert
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

