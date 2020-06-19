//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController
{
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightlabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightlabel: UILabel!
    @IBOutlet weak var weightslider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
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
    @IBAction func calculatorPressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightslider.value
     
        calculatorBrain.calculateBMI (height: height, weight: weight)
        self.performSegue(withIdentifier: "gotToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "gotToResults"
        {
            // to specifiy that this method is coming form ResultViewController
            //this used to excat the same data type that we will be using by using as!
            // as! means downcasting  and ! is used to force the downcast
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvace()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
    
}

