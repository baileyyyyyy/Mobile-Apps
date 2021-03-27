//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Bailey Yingling on 11/7/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cText: UITextField!
    @IBOutlet weak var gText: UITextField!
    @IBOutlet weak var wText: UITextField!
    @IBOutlet weak var fText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func calculate(g: Double,c: Double,w: Double) -> Double {
        
        let f = (100 * g - ((100 - w) * c))/w

// Stretch 1

        if f <= 100 {
            self.view.backgroundColor = .green
        } else {
            self.view.backgroundColor = .red
}
        return f
}
    @IBAction func answerTapped(_ sender: Any) {
        if let gc = Double(gText.text!), let cc = Double(cText.text!), let wc = Double(wText.text!){
            let answer = calculate(g: gc, c: cc, w: wc)
            fText.text = String(answer)
        } else {
            fText.text = "Please enter valid numbers"
        }
    }
}
