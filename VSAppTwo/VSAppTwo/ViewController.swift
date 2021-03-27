//
//  ViewController.swift
//  VSAppTwo
//
//  Created by Bailey Yingling on 9/22/20.
//  Copyright © 2020 Bailey Yingling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelArea: UILabel!
    
    @IBOutlet weak var flavorTextArea: UITextView!
    
    var appleText = "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. It is considered one of the Big Tech technology companies, alongside Amazon, Google, Microsoft, and Facebook."
    
    var applesText = "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today."
    
    var pearText = "The pear tree and shrub are a species of genus Pyrus, in the family Rosaceae, bearing the pomaceous fruit of the same name. Several species of pear are valued for their edible fruit and juices while others are cultivated as trees."
    
    @IBOutlet weak var imageArea: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func appleTapped(_ sender: UIButton) {
        imageArea.image =  UIImage(named: "apple")
        flavorTextArea.text  = appleText
    }
    
    @IBAction func applesTapped(_ sender: UIButton) {
        imageArea.image = UIImage(named: "apples")
        flavorTextArea.text = applesText
    }
    
    @IBAction func pearTapped(_ sender: Any) {
        imageArea.image = UIImage(named: "pear")
        flavorTextArea.text = pearText
    }
    
}

