//
//  MenuController.swift
//  BMI
//
//  Created by Ramazan Kalabay on 19.12.2023.
//

import UIKit

class MenuController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderLabel: UISlider!
    @IBOutlet weak var weightSliderLabel: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func HeightSliderAction(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func WeightSliderAction(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    
    
    
    @IBAction func CalculateButtonAction(_ sender: UIButton) {
        let height = heightSliderLabel.value
        let weight = weightSliderLabel.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.color = calculatorBrain.getColor()
            destinationVC.comment = calculatorBrain.getComment()
        }
    }
}
