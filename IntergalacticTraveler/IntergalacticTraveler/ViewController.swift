//
//  ViewController.swift
//  IntergalacticTraveler
//
//  Created by Bailey Yingling on 11/9/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func whenRedDwarfTapped(_ sender: UIButton) {
    }
    
    @IBAction func whenBlueDwarfTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "mySegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        if sender == nil{
            nvc.starName = "blueDwarf"
        } else {
            nvc.starName = "redDwarf"
        }
    }
    
}

