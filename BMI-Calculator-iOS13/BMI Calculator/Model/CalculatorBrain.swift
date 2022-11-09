//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ayush Khurana on 6/25/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    func getBMIValue() -> String
    {
        let bmiTo1DecimalPlace = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() ->String
    {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() ->UIColor
    {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        if bmiValue < 20
        {
            bmi=BMI(value: bmiValue,advice: "Eat more Food",color: UIColor.blue )
        }
        else if bmiValue < 27
        {
            bmi=BMI(value: bmiValue,advice: "Fit",color: UIColor.green )
        }
        else{
            bmi=BMI(value: bmiValue,advice: "overweight Please exercise",color: UIColor.red )
        }
    }
}
