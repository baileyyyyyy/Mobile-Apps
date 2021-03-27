//
//  ViewController.swift
//  convert
//
//  Created by Bailey Yingling on 11/4/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var textThree: UITextField!
    
    @IBOutlet weak var answerText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapped(_ sender: Any) {
        if let one = textOne.text {
            if let two = textTwo.text {
                if let three = textThree.text {
                    answerText.text = one + two + three
                }
            }
        }
    }
    
    @IBAction func tapped2(_ sender: UIButton) {
        if let one = textOne.text, let two = textTwo.text, let three = textThree.text {
            answerText.text = one + two + three
        }
    }
    

}

