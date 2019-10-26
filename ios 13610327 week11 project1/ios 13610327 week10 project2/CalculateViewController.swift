//
//  ViewController.swift
//  ios 13610327 week10 project2
//
//  Created by ชวกร แก้วน่าน on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var BmiValueCal = ""
    var calBrain = CalculateBrain ()
    
    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var silderHeightOutlet: UISlider!
    @IBOutlet weak var silderWeightOutlet: UISlider!
    @IBOutlet weak var BMIOutlet: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let height = String(format:"%.2f",sender.value)
        HeightLabel.text = "\(height) M "
    }
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        let weight = String(format:"%.0f",sender.value)
        weightLable.text = "\(weight) KG "
    }

    @IBAction func calculatePressed(_ sender: Any) {
        let Height = silderHeightOutlet.value
        let Weight = silderWeightOutlet.value
        calBrain.calculateBMI(height: Height, weight: Weight)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    @IBAction func CreditPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goToCredit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinetionVc = segue.destination as! ResultViewController
            destinetionVc.Bmivalue = calBrain.getBMIValue()
            destinetionVc.advice = calBrain.getAdvice()
            destinetionVc.color = calBrain.getColor()
            
        }
        if segue.identifier == "goToCredit" {
            let destinetionVc = segue.destination as! CreditViewController
            destinetionVc.Name = "Naun 🐶"
            
        }
    }
}

