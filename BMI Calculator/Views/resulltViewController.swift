//
//  resulltViewController.swift
//  BMI Calculator
//
//  Created by Wangie on 14/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class resulltViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue : String?
    var color : UIColor?
    var advice : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
}
