//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ferhad Quluzade on 07.03.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiToDecimal = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() ->String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi  = BMI(value: bmiValue, advice: "Eat morepies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        }else if bmiValue > 18.5 && bmiValue < 24.9{
bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))        }
        }
    }

