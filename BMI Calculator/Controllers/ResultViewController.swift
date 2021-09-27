//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Virtual Machine on 24/09/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelResultText: UILabel!
    var imcValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelResult.text = imcValue
        labelResultText.text = advice
        view.backgroundColor = color
    
    }
    
    @IBAction func returnCalculate(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
