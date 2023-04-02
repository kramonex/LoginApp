//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by kramonex on 02.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeText: UILabel!
    
    var welcomeTextName = "Welcome, "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.text = welcomeTextName + "!"
        
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
                gradientLayer.colors = [UIColor.systemCyan.cgColor, UIColor.systemFill.cgColor]
                view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
