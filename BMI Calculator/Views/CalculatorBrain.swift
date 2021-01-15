//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zdeněk Škrobák on 15.01.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: Bmi?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let value = weight / pow(height, 2)
        
        if (value < 18.5) {
            bmi = Bmi(value: value, advice: "Eat more pies", color: UIColor.blue)
        } else if (value < 24.9) {
            bmi = Bmi(value: value, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = Bmi(value: value, advice: "Eat less pies", color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        }
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
