//
//  CreditViewController.swift
//  ios 13610327 week10 project2
//
//  Created by ชวกร แก้วน่าน on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    var Name = " "
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = Name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
}
