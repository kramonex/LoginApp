//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by kramonex on 04.04.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet var photo: UIImageView!
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var job: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.layer.cornerRadius = 25
        
        name.text = "Name: \(person.name)"
        surname.text = "Surname: \(person.surname)"
        age.text = "Age: \(person.age)"
        job.text = "Job: \(person.job)"
        
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
                gradientLayer.colors = [UIColor.systemCyan.cgColor, UIColor.systemFill.cgColor]
                view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
