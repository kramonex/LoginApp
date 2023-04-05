//
//  BioViewController.swift
//  LoginApp
//
//  Created by kramonex on 04.04.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var smallBio: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smallBio.text = person.bio

        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
                gradientLayer.colors = [UIColor.systemCyan.cgColor, UIColor.systemFill.cgColor]
                view.layer.insertSublayer(gradientLayer, at: 0)
    }
    


}
