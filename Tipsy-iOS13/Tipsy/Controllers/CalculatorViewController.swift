//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var tipValue = "0.0%"
    var intStepperValue = 0
    var decimalTip = 0.0
    var roundedPay = 0.00
    
   
    @IBAction func tipChanged(_ sender: UIButton) {
        
        if sender.isSelected {
            return
        }

        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        tipValue = sender.accessibilityIdentifier ?? "No identifier"
        
        billTextField.resignFirstResponder()

    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    
        intStepperValue = Int(sender.value)
        splitNumberLabel.text = String(intStepperValue)
      
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        decimalTip = Double(tipValue)!
        print("DecimalTip: \(decimalTip)")

       
        let decimalBill = Double(billTextField.text!)
        
        let totalPay = (decimalBill! + decimalBill! * (decimalTip/100))/Double(intStepperValue)
        roundedPay = Double(round(100*totalPay)/100)
        print(roundedPay)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalPay = roundedPay
            destinationVC.tip = decimalTip
            destinationVC.intStepperValue = intStepperValue
                     
        } else {
            print("Error")
        }
    }
    
    

}

