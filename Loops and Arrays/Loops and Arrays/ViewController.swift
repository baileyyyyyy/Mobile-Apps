//
//  ViewController.swift
//  Loops and Arrays
//
//  Created by Bailey Yingling on 11/10/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fruit = ["apple", "pear", "peach","strawberry","pineapple","banana"]
    
    var veggies = ["tomato","carrot","pea","celery"]
    
    var drinks = ["tea","coffee","milk","soda"]
    
    var snacks = ["chips","granola","nuts","popcorn"]
    
    var contact = ["Name":"Tom","Address":"123 Fake Street","Phone":"123-124-2234"]
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func whenArrayButton1Pressed(_ sender: UIButton) {
        var output = ""
        for item in fruit {
            output += "\(item)\n"
        }
        textView.text = output
    }
    
    @IBAction func whenArrayButton2Pressed(_ sender: UIButton) {
        var output = ""
        for i in 0...3 {
            output += "\(veggies[i])\n"
        }
        textView.text = output
    }
    
    @IBAction func whenArrayButton3Pressed(_ sender: UIButton) {
        var output = ""
        for i in 0..<3 {
            output += "\(drinks[i])\n"
        }
        textView.text = output
    }
    
    @IBAction func whenArrayButton4Pressed(_ sender: UIButton) {
        var output = ""
        for i in 1..<snacks.count {
            output += "\(snacks[i])\n"
        }
        textView.text = output
    }
    
    @IBAction func whenDictionaryButtonPressed(_ sender: UIButton) {
        var output = ""
        for (key,value) in contact {
            output += "\(key):\(value)\n"
        }
        textView.text = output
    }
    
    
}

