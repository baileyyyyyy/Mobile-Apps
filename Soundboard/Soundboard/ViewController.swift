//
//  ViewController.swift
//  Soundboard
//
//  Created by Bailey Yingling on 1/12/21.
//  Copyright © 2021 Bailey Yingling. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func oneTapped(_ sender: UIButton) {
        playSound(fileName: "one")
    }
    
    @IBAction func twoTapped(_ sender: UIButton) {
        playSound(fileName: "two")
    }
    
    @IBAction func threeTapped(_ sender: UIButton) {
        playSound(fileName: "three")
    }
    
    @IBAction func fourTapped(_ sender: UIButton) {
        playSound(fileName: "four")
    }
    
    @IBAction func fiveTapped(_ sender: UIButton) {
        playSound(fileName: "five")
    }
    
    @IBAction func sixTapped(_ sender: UIButton) {
        playSound(fileName: "six")
    }
    
    
    
    var sound: AVAudioPlayer?
    
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

}

