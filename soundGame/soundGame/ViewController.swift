//
//  ViewController.swift
//  soundGame
//
//  Created by Bailey Yingling on 1/26/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var computerPick = 1
    
    var playerPick = 1
    
    var sound: AVAudioPlayer?
        
        func playSound(fileNum: Int) {
            var fileName = ""
            
            if fileNum == 1 {
                fileName = "a"
                
            }
            
            if fileNum == 2 {
                fileName = "b"
            }
            
            if fileNum == 3 {
                fileName = "c"
            }
            
            if fileNum == 4 {
                fileName = "c2"
            }
            
            if fileNum == 5 {
                fileName = "d"
            }
            
            if fileNum == 6 {
                fileName = "e"
            }
            
            if fileNum == 7 {
                fileName = "f"
            }
            
            if fileNum == 8 {
                fileName = "g"
            }
            
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

    func answerAlert() {
        if playerPick == computerPick {
            alertCorrect()
        } else {
            alertIncorrect()
        }
    }
    
    
    func alertIncorrect() {
    let alert = UIAlertController(title: "Invalid!", message: nil, preferredStyle: .alert)
    
    let ok = UIAlertAction (title: "OK", style: .default)
    
    alert.addAction(ok)
        
    self.present(alert, animated: true)
    }
    
    func alertCorrect() {
    let alert = UIAlertController(title: "Correct!", message: nil, preferredStyle: .alert)
    
    let ok = UIAlertAction (title: "OK", style: .default)
    
    alert.addAction(ok)
        
    self.present(alert, animated: true)
    }
    
    
    @IBAction func startButton(_ sender: UIButton) {
        computerPick = Int.random(in: 1...7)
        playSound(fileNum: computerPick)
    }
    
    @IBAction func aButton(_ sender: UIButton) {
        playSound(fileNum: 1)
        playerPick = 1
        answerAlert()
    }
    
    @IBAction func bButton(_ sender: UIButton) {
        playSound(fileNum: 2)
        playerPick = 2
        answerAlert()
    }
    
    @IBAction func cButton(_ sender: UIButton) {
        playSound(fileNum: 3)
        playerPick = 3
        answerAlert()
    }
    
    @IBAction func c2Button(_ sender: UIButton) {
        playSound(fileNum: 4)
        playerPick = 4
        answerAlert()
    }
    
    @IBAction func dButton(_ sender: UIButton) {
        playSound(fileNum: 5)
        playerPick = 5
        answerAlert()
    }
    
    @IBAction func eButton(_ sender: UIButton) {
        playSound(fileNum: 6)
        playerPick = 6
        answerAlert()
    }
    
    @IBAction func fButton(_ sender: UIButton) {
        playSound(fileNum: 7)
        playerPick = 7
        answerAlert()
    }
    
    @IBAction func gButton(_ sender: UIButton) {
        playSound(fileNum: 8)
        playerPick = 8
        answerAlert()
    }
    
}
