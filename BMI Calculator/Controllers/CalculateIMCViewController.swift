//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateIMCViewController: UIViewController {

    @IBOutlet weak var labelSliderHeight: UILabel!
    @IBOutlet weak var labelSliderWeight: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderHeight(_ sender: UISlider) {
        
        labelSliderHeight.text = String(format: "%.2fm", sliderHeight.value)
        
    }
    
    @IBAction func sliderWeight(_ sender: UISlider) {
        
        labelSliderWeight.text = ("\(Int(sliderWeight.value))kg")
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = sliderHeight.value
        let weight = sliderWeight.value
        
        calculatorBrain.calculateIMC(height: height, weight: weight)
        self.performSegue(withIdentifier: "segueCalculate", sender: self)
                
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueCalculate"{
        
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.imcValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

