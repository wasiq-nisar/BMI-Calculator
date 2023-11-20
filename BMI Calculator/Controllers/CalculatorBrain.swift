//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammad Wasiq  on 07/11/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if (bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more Please", color: UIColor.blue)
        }
        else if (bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat Less", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white 
    }
}
