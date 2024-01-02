//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by KOPPOLA GOKUL SAI on 18/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi : String?
    var advice : String?
    var color : UIColor?
    
    
    @IBOutlet weak var suggestionOutleet: UILabel!
    @IBOutlet weak var resultOulet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultOulet.text = bmi
        suggestionOutleet.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
   
    
}
