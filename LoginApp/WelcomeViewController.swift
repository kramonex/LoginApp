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
    }
    
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
