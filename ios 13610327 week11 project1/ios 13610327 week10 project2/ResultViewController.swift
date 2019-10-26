//
//  ResultViewController.swift
//  ios 13610327 week10 project2
//
//  Created by ชวกร แก้วน่าน on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var Bmivalue:String?
    var advice:String?
    var color:UIColor?
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = Bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PressButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
