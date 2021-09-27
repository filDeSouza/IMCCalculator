//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Virtual Machine on 24/09/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{

    var imc: IMC?
    
    mutating func calculateIMC(height: Float, weight: Float){
        
        let imcValue = weight / (height * height)
        var advice: String
        var color: UIColor
        if imcValue < 18.5 {
            advice = "Underweight"
            color = .blue
        }else if imcValue < 24.9{
            advice = "Normal"
            color = .green
        }else{
            advice = "Overweight"
            color = .red
        }
        imc = IMC(value: imcValue, advice: advice, color: color)
    }
    
    func getBMIValue() -> String{
        
        let imcTo1DecimalPlace = String(format: "%.1f", imc?.value ?? 0.0)

        return imcTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return imc?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return imc?.color ?? UIColor.white
    }
        
}
