//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Vasu Pasupuleti on 6/19/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

// anything that starts with UI keyword comes from UIKit framework
import UIKit

class SecondViewController: UIViewController {
    
    var bmi = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmi
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
