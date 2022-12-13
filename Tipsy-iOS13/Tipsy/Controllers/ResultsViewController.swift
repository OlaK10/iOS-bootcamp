//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Ola on 24/04/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var totalPay: Double!
    var intStepperValue: Int!
    var tip: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = String(format: "%.2f", totalPay)
        settingsLabel.text = "Split between \(intStepperValue!) people, with \(Int(tip!))% tip"
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
}
