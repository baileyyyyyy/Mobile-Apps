//
//  ViewController.swift
//  isEnabled
//
//  Created by Bailey Yingling on 3/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonStack: UIStackView!
    
    @IBOutlet weak var imageV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageV.isHidden = true
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        buttonStack.isHidden = true
        imageV.isHidden = false
    }
    

}

