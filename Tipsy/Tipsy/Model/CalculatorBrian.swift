//
//  CalculatorBrian.swift
//  Tipsy
//
//  Created by Vasu Pasupuleti on 6/26/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

class CalculatorBrian {
    var tipPct: Double?
    var splitNumber: Double?
    var billAmount: Double?
    
    init(tipPct: Double, splitNumber:Double, billAmount:Double){
        self.tipPct = tipPct
        self.splitNumber = splitNumber
        self.billAmount = billAmount
    }
    
    func getResult() -> String {
        billAmount = (billAmount ?? 0.0) + (billAmount ?? 0.0)*(tipPct ?? 0.0)
        billAmount = (billAmount ?? 0.0) / (splitNumber ?? (1.0))
        let result:String = String(format: "%.2f", billAmount!)
        print(result)
        return result
    }
    
    func getSettings() -> String {
        let tip:String = String(format: "%.0f", (tipPct ?? 0.0)*100)
        let split:String = String(format: "%.0f", (splitNumber ?? 0.0))
        
        let settings:String = "Split between \(split) people, with \(tip)% tip."
        return settings
    }
}
