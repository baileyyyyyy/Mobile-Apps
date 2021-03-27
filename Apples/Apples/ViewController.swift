//
//  ViewController.swift
//  Apples
//
//  Created by Bailey Yingling on 11/9/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var ageText: UITextField!
    
    @IBOutlet weak var answerText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapped(_ sender: UIButton) {
        if let name = nameText.text, let age = ageText.text {
        answerText.text = name + " is " + age + " years old"
        
        }
    }
}
