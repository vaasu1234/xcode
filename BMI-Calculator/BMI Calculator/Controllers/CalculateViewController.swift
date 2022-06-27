//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var hSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var wSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = hSlider.value
        let weight = wSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        /*
        let secondVC = SecondViewController()
        secondVC.bmi = String(format: "%.1f", bmi)
        self.present(secondVC, animated: true, completion: nil)
         */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            //downcasting and !
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
    
}

