//
//  ViewController.swift
//  stepPractice
//
//  Created by Bailey Yingling on 3/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var arrayOut: UILabel!
    
    @IBOutlet weak var lab: UILabel!
    
    var step = 0
    var textArray = ["arrays and steps", "go together", "like rabbits and carrots 🐰🥕", "careful not to run out of array positions."]
    var arrayStep = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch step {
        case 0:
            lab.text = "This is step 1, the button has been pressed 1 time 👀"
        case 1:
            lab.text = "This is step 2, the button has been pressed 2 times 👅"
        case 2:
            lab.text = "This is step 3, the button has been pressed 3 times 😳"
        default:
            lab.text = "Tap to reset."
            step = -1
        }
        step += 1
    }
    
    @IBAction func arrayButtonTapped(_ sender: UIButton) {
        switch arrayStep {
        case 0..<textArray.count:
            arrayOut.text = textArray [arrayStep]
        default:
            arrayStep = 0
            arrayOut.text = textArray [arrayStep]
        }
        arrayStep += 1
    }
    
}


//  code for image array where textArray could be used
//  imageOut.image = UIImage(named: imageArray[step]
