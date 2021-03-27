//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Bailey Yingling on 1/5/21.
//  Copyright © 2021 Bailey Yingling. All rights reserved.
//

import UIKit
import AVFoundation
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var topBlue: UIView!
    
    @IBOutlet weak var topImage: UIImageView!
    
    @IBOutlet weak var middleWhite: UIView!
    
    @IBOutlet weak var middleText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound(fileName: "buzzer")
        alert()
    }

    //colors
    let blueColor = UIColor(red: 46/255, green: 196/255, blue: 182/255, alpha: 1)
    let redColor = UIColor(red: 231/255, green: 29/255, blue: 54/255, alpha: 1)
    let orangeColor = UIColor(red: 255/255, green: 159/255, blue: 28/255, alpha: 1)
    
    @IBAction func rockButton(_ sender: UIButton) {
        let rock = Int.random(in: 1...3)
        if rock == 1 {
            middleText.text = "Tie!"
            middleWhite.backgroundColor = orangeColor
            topImage.image = UIImage(named: "rockImage")
        }
        if rock == 2 {
            middleText.text = "You Lose!"
            middleWhite.backgroundColor = redColor
            topImage.image = UIImage(named: "paperImage")
        }
        if rock == 3 {
            middleText.text = "You Win!"
            middleWhite.backgroundColor = blueColor
            topImage.image = UIImage(named: "scissorsImage")
        }
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        let paper = Int.random(in: 1...3)
        if paper == 1 {
            middleText.text = "You Win!"
            middleWhite.backgroundColor = blueColor
            topImage.image = UIImage(named: "rockImage")
        }
        if paper == 2 {
            middleText.text = "Tie!"
            middleWhite.backgroundColor = orangeColor
            topImage.image = UIImage(named: "paperImage")
        }
        if paper == 3 {
            middleText.text = "You Lose!"
            middleWhite.backgroundColor = redColor
            topImage.image = UIImage(named: "scissorsImage")
        }
    }
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        let scissors = Int.random(in: 1...3)
        if scissors == 1 {
            middleText.text = "You Lose!"
            middleWhite.backgroundColor = redColor
            topImage.image = UIImage(named: "rockImage")
        }
        if scissors == 2 {
            middleText.text = "You Win!"
            middleWhite.backgroundColor = blueColor
            topImage.image = UIImage(named: "paperImage")
        }
        if scissors == 3 {
            middleText.text = "Tie!"
            middleWhite.backgroundColor = orangeColor
            topImage.image = UIImage(named: "scissorsImage")
        }
    }

    var sound: AVAudioPlayer?
    
    
    //func that allows audio to play
    func playSound(fileName: String) {
        if let path = Bundle.main.path(forResource: fileName, ofType: "wav") {
            let url = URL(fileURLWithPath: path)
            do {
                self.sound = try AVAudioPlayer(contentsOf: url)
                self.sound?.play()
            }
            catch {
                print("Can't find file")
            }
        }
    }
    
    
    // gives instructions on how to play.
    func alert() {
    let alert = UIAlertController(title: "Welcome!", message: "To play pick an object at the bottom.", preferredStyle: .alert)
    
    let ok = UIAlertAction (title: "OK", style: .default)
    
    alert.addAction(ok)
        
    self.present(alert, animated: true)
    }
    
    
    //button on top right that sends user to a wikipedia page.
    @IBAction func showRules(_ sender: Any) {
        if let url = URL(string: "https://en.wikipedia.org/wiki/Rock_paper_scissors") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
    }
    
    
}




