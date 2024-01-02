//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ClaculateViewController: UIViewController {

    @IBOutlet weak var wsliderOulet: UISlider!
    @IBOutlet weak var hsliderOulet: UISlider!
    @IBOutlet weak var weightOutleet: UILabel!
    @IBOutlet weak var heightOulet: UILabel!
    
    
    
    var calculate = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hieghtSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightOulet.text = "\(height)m"
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightOutleet.text = "\(weight)Kg"
    }
    @IBAction func Calculate(_ sender: UIButton) {
        
        calculate.setHeight(height: Double(hsliderOulet.value))
        
        calculate.setWeight(weight: Double(wsliderOulet.value))
        
        
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmi = calculate.getBMI()
            destinationVC.advice = calculate.getadvice()
            destinationVC.color = calculate.getColor()
        }
    }
    
}

