//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onHeightSlide(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f",sender.value))m"
    }
    @IBAction func onWeightSlide(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f",sender.value))Kg"
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        calculatorBrain.setBMI(heightSlider.value, weightSlider.value)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorBrain.getBMI()
        }
    }
    
}

