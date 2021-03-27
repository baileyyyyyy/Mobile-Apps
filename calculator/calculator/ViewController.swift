//
//  ViewController.swift
//  calculator
//
//  Created by Bailey Yingling on 3/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    var number1 = ""
    var number2 = ""
    var op = ""
    var answer: Double = 0
    var screenOutput = ""
    var areaOfRecStep = 0
    
    @IBOutlet weak var stretchLabel: UILabel!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var fiveButton: UIButton!
    
    @IBOutlet weak var sixButton: UIButton!
    
    @IBOutlet weak var sevenButton: UIButton!
    
    @IBOutlet weak var eightButton: UIButton!
    
    @IBOutlet weak var nineButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    @IBOutlet weak var switchButton: UIButton!
    
    @IBOutlet weak var pieButton: UIButton!
    
    @IBOutlet weak var dotButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var subtractButton: UIButton!
    
    @IBOutlet weak var equalButton: UIButton!
    
    @IBOutlet var allButtons: [UIButton]!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<allButtons.count{
            allButtons[i].layer.cornerRadius = allButtons[i].frame.width / 4
            allButtons[i].layer.masksToBounds = true
        }
        
        
        // makes the 0 buttons rounded
        zeroButton.layer.cornerRadius = zeroButton.frame.width / 6
        zeroButton.layer.masksToBounds = true
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        number1 += "1"
        screenOutput += "1"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        number1 += "2"
        screenOutput += "2"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        number1 += "3"
        screenOutput += "3"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        number1 += "4"
        screenOutput += "4"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        number1 += "5"
        screenOutput += "5"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        number1 += "6"
        screenOutput += "6"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        number1 += "7"
        screenOutput += "7"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        number1 += "8"
        screenOutput += "8"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        number1 += "9"
        screenOutput += "9"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        number1 += "0"
        screenOutput += "0"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        number1 = ""
        number2 = ""
        op = ""
        answer = 0.0
        screenOutput = ""
        label.text = screenOutput
        
    }
    
    @IBAction func buttonSwitch(_ sender: UIButton) {
        //number1 = "\(String(plusMinus(number1: number1)))"
    }
    
    @IBAction func buttonPie(_ sender: UIButton) {
        number1 = "3.14"
        screenOutput = "3.14"
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        number1 += "."
        screenOutput += "."
        label.text = screenOutput
        print(number1)
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        number2 = number1
        number1 = ""
        op = "multiply"
        screenOutput += " * "
        print(number2)
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        number2 = number1
        number1 = ""
        op = "divide"
        screenOutput += " / "
        print(number2)
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        number2 = number1
        number1 = ""
        op = "add"
        screenOutput += " + "
        print(number2)
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        number2 = number1
        number1 = ""
        op = "subtract"
        screenOutput += " - "
        print(number2)
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        switch op {
        case "add":
            answer = Double(number1)! + Double(number2)!
            screenOutput += " = \(String(answer))"
            label.text = screenOutput
            print(answer)
        case "multiply":
            answer = Double(number1)! * Double(number2)!
            screenOutput += " = \(String(answer))"
            label.text = screenOutput
            print(answer)
        case "subtract":
            answer = Double(number2)! - Double(number1)!
            screenOutput += " = \(String(answer))"
            label.text = screenOutput
            print(answer)
        case "divide":
            answer = Double(number2)! / Double(number1)!
            screenOutput += " = \(String(answer))"
            label.text = screenOutput
            print(answer)
        case "areaOfRec":
            print("hello")
            if areaOfRecStep == 0 {
                screenOutput = ""
                label.text = screenOutput
                number2 = number1
                label.text = ""
                number1 = ""
                stretchLabel.text = "Enter height and press equal"
                areaOfRecStep += 1
            } else if areaOfRecStep == 1 {
                answer = Double(number1)! * Double(number2)!
                screenOutput = "\(String(answer))"
                label.text = screenOutput
                stretchLabel.text = "The area of the rectangle is"
            }
            
        default:
            break
        }
    }
    
    @IBAction func areaOfRec(_ sender: UIButton) {
        op = "areaOfRec"
        stretchLabel.text = "Enter length of rectangle and press equal"
        screenOutput = ""
        label.text = screenOutput
    }
    
    func plusMinus(number1: Double) -> Double {
        let number2 = number1 * -1.0
        return number2
    }
    
}

