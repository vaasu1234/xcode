//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var tipPct: Double? = 0.1
    var splitNumber: Double? = 2.0
    var billAmount: Double? = 0.0
    var calculatorBrain : CalculatorBrian?
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
      
        if sender.currentTitle == "0%" {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipPct = 0.0
        } else if sender.currentTitle == "10%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tipPct = 0.1
        } else {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            tipPct = 0.2
        }
        
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f",  sender.value)
        print (sender.value)
        splitNumber = (sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        print(billTextField.text!)
        billTextField.endEditing(true)
        billAmount = Double(billTextField.text ?? "0.0")
        
        calculatorBrain = CalculatorBrian(tipPct: tipPct!, splitNumber: splitNumber!, billAmount: billAmount!)
                
        if zeroPctButton.isSelected {
            print(0.0)
        } else if tenPctButton.isSelected {
            print(0.1)
        } else {
            print (0.2)
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)

        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            //downcasting and !
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.billAmount = calculatorBrain?.getResult()
            destinationVC.billSettings = calculatorBrain?.getSettings()
        }
    }
}

