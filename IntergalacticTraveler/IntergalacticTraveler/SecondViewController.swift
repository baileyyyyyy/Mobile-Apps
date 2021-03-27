//
//  SecondViewController.swift
//  IntergalacticTraveler
//
//  Created by Bailey Yingling on 11/9/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var starImageView: UIImageView!
    
    var starName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let randomNumber = Int.random(in: 1...3)
        starImageView.image = UIImage(named: "\(starName)\(randomNumber)")
        
        // Do any additional setup after loading the view.
    }
    

}
