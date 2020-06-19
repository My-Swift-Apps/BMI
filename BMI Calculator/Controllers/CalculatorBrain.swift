//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Mero on 2020-04-26.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain
{
    var bmi: BMI? //that is to make it optional
    
    func getBMIValue() -> String
    {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvace()-> String{
        return bmi?.advice ?? "The return value if nil"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let BMIValue = weight / pow(height,2)
        
        if BMIValue < 18.5
        {
            bmi = BMI(value: BMIValue , advice: "Eat more pies", color: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
        }
        else if ( 18.5 < BMIValue && BMIValue < 24.9)
        {
            bmi = BMI(value: BMIValue , advice: "Fit as a fiddle", color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        }
        else
        {
            bmi = BMI(value: BMIValue , advice: "Eat less pies", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
}

