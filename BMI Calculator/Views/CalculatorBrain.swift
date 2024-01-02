//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by KOPPOLA GOKUL SAI on 18/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var height = 0.0
    var weight = 0.0
    var bmi : BMI?
    
    mutating func setHeight(height : Double)
    {
        self.height = height
    }
    mutating func setWeight(weight : Double){
        self.weight = weight
    }
    
    
    
    
    mutating func getBMI() -> String{
       
        let bmival = Double(weight)/Double(height*height)
        
        if bmival < 18.5
        {
            bmi = BMI(bmiValue: bmival, suggestion: "eat more pies", color: UIColor.blue )
        }
        else if bmival < 24.9
        {
            bmi = BMI(bmiValue: bmival, suggestion: "fit ", color: UIColor.green )
            
        }
        else
        {
            bmi = BMI(bmiValue: bmival, suggestion: "eat less pies", color: UIColor.red )
        }
        return String(format: "%.1f",   bmi?.bmiValue ?? 0.00)
        
    }
    func getadvice() -> String{
        return bmi?.suggestion ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    
  
        
    
    
    
}
