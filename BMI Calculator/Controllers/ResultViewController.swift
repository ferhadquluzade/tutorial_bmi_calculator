//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ferhad Quluzade on 06.03.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
        
    }
    

}
