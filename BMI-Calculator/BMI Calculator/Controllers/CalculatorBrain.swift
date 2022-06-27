//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Vasu Pasupuleti on 6/26/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class CalculatorBrain {
    
    var bmi:BMI?
    
    func calculateBMI(height:Float, weight:Float){
       let bmiValue = weight / (height * height)
        let bmiAdvice:String
        let bmiColor: UIColor
        
        if bmiValue < 18.5 {
            bmiAdvice = "Underweight"
            bmiColor = UIColor.blue
        } else if bmiValue  > 24.9 {
            bmiAdvice = "Overweight"
            bmiColor = UIColor.red
        } else {
            bmiAdvice = "Normal"
            bmiColor = UIColor.green
        }
            
        bmi = BMI(value: bmiValue, advice: bmiAdvice, color: bmiColor)
    }
    
    func getBMIValue()->String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Normal"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
    
}
