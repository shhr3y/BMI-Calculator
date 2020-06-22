//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Shrey on 14/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi:BMI?

    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var recalculateButton: UIButton!
    @IBOutlet var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recalculateButton.layer.cornerRadius = 20
        bmiLabel.text = String(format:"%.1f",bmi?.value ?? 0.0)
        adviseLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    
    @IBAction func onRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
