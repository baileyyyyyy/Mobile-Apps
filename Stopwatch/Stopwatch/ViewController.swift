//
//  ViewController.swift
//  Stopwatch
//
//  Created by Bailey Yingling on 11/9/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var (hours, minutes, seconds, fractions) = (0, 0, 0, 0)

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var fractionsLabel: UILabel!
    @IBOutlet weak var startOutlet: UIButton!
    
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.keepTimer), userInfo: nil, repeats: true)
        startOutlet.isHidden = true
    }
    
    @IBAction func pause(_ sender: UIButton) {
        timer.invalidate()
        startOutlet.isHidden = false
    }
    
    @IBAction func stop(_ sender: UIButton) {
        timer.invalidate()
        (hours, minutes, seconds, fractions) = (0, 0, 0, 0)
        timeLabel.text = "00:00:00"
        fractionsLabel.text = ".00"
        startOutlet.isHidden = false
    }

    @objc func keepTimer() {
        
        fractions += 1
        if fractions > 99 {
            seconds += 1
            fractions = 0
        }
        
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }
        
        if minutes == 60 {
            hours += 1
            minutes = 0
        }
        
        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        let hoursString = hours > 9 ? "\(hours)" : "0\(hours)"
        
        timeLabel.text = "\(hoursString):\(minutesString):\(secondsString)"
        fractionsLabel.text = ".\(fractions)"
    }
    
    
    
}

