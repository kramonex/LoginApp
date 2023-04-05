//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by kramonex on 02.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeText: UILabel!
    @IBOutlet var myNameIs: UILabel!
    
    var welcomeTextName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.text = "Welcome, \(welcomeTextName)!"
        myNameIs.text = "My name is \(person.name) \(person.surname)."
        
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
                gradientLayer.colors = [UIColor.systemCyan.cgColor, UIColor.systemFill.cgColor]
                view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
