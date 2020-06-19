//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightlabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightlabel: UILabel!
    @IBOutlet weak var weightslider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider)
    {
        let hightSliderValue = String(format: "%.2f", sender.value)
        heightlabel.text = "\(hightSliderValue) m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider)
    {
        let wightSliderValue = String(format: "%.1f", sender.value)
        weightlabel.text = "\(wightSliderValue) kg"
    }
    
    
}

