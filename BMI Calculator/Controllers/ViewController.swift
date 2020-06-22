//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var height:Float = 1.5
    var weight:Float = 100.0

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onHeightSlide(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = "\(String(format: "%.2f",height))m"
    }
    @IBAction func onWeightSlide(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = "\(String(format: "%.0f",weight))Kg"
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        let BMI:Float = weight/pow(height,2)
        
        let secondVC = ResultViewController()
//        secondVC.BMIValue = BMI
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

