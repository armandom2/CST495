//
//  ViewController.swift
//  TipCalculatorHW
//
//  Created by Armando Miguel on 9/4/19.
//  Copyright © 2019 Armando Miguel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UISegmentedControl!
    
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var FinalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10,0.15]
        let bill = Double(billAmount.text!) ?? 0
        let tip = (bill * tipPercent[tipAmount.selectedSegmentIndex])
        let total = tip + bill
        tipTotal.text = String(format: "$%.2f",tip)
        FinalAmount.text = String(format: "$%.2f",total)
    }
    
}

