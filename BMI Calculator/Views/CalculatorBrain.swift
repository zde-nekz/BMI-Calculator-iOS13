//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zdeněk Škrobák on 15.01.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue = "0.0"
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        
        bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBmiValue() -> String {
        return bmiValue
    }
    
}
