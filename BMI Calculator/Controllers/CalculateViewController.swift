//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculate = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hightSliderChanged(_ sender: UISlider)
    {
        let height = String(format: "%.2f", sender.value);
        heightLabel.text = "\(height)m";
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider)
    {
        let weight = String(format: "%.0f", sender.value);
        weightLabel.text = "\(weight)Kg";
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heigth = heightSlider.value;
        let weight = weightSlider.value;
        calculate.calculateBmi(height: heigth, weight: weight)
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! resulltViewController
            destinationVC.bmiValue = calculate.getBMIValue()
            destinationVC.advice = calculate.getAdvice();
            destinationVC.color = calculate.getColor();
        }
    }
}
