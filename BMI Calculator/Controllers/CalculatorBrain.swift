//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shrey on 14/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var height:Float = 1.5
    var weight:Float = 100.0
    var bmi:BMI?
    
    mutating func setBMI(_ userHeight:Float,_ userWeight:Float){
        height = userHeight
        weight = userWeight
        let bmiValue = weight/pow(height,2)
        
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "You're underweight..start eating more!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "You're fit..keep it up!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "You're overweight..start dieting!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMI()->(BMI){
        return bmi!
    }
   

}
