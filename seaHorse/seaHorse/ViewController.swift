//
//  ViewController.swift
//  seaHorse
//
//  Created by Bailey Yingling on 11/2/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var courtImage: UIView!
  
    @IBAction func courtPan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        courtImage.center = CGPoint(x: point.x, y: point.y)
    }
    
    @IBOutlet weak var fearImage: UIView!
    
    @IBAction func fearPan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        fearImage.center = CGPoint(x: point.x, y: point.y)
    }
    
    @IBOutlet weak var summerImage: UIView!
    
    @IBAction func summerPan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        summerImage.center = CGPoint(x: point.x, y: point.y)
    }
    
    
    @IBOutlet weak var madvillainyImage: UIView!
    
    @IBAction func madvillainyPan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        madvillainyImage.center = CGPoint(x: point.x, y: point.y)
    }
    
    @IBOutlet weak var shipImage: UIView!
    
    @IBAction func shipPan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        shipImage.center = CGPoint(x: point.x, y: point.y)
    }
    
    @IBOutlet weak var whiteImage: UIView!
    
    @IBAction func whitePan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        whiteImage.center = CGPoint(x: point.x, y: point.y)
    }
    

}
