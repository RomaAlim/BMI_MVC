//
//  calculatorBrain.swift
//  BMI
//
//  Created by Ramazan Kalabay on 19.12.2023.
//

import UIKit

struct CalculatorBrain {
    
    
    var bmi: BMIbone?
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    func getComment() -> String{
        return bmi?.comment ?? "No comment"
    }
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMIbone(value: bmiValue, color: .orange, comment: "Кушай большееееееее!")
        } else if bmiValue < 24.9 {
            bmi = BMIbone(value: bmiValue, color: .green, comment: "Красавчик, у тебя все нормально!")
        } else {
            bmi = BMIbone(value: bmiValue, color: .red, comment: "Кушай мало, куда больше то!")
        }
    }
    
}
