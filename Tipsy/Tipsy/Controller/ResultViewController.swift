//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Vasu Pasupuleti on 6/26/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var billAmount:String?
    var billSettings:String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = billAmount
        settingsLabel.text = billSettings

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalcuatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}
