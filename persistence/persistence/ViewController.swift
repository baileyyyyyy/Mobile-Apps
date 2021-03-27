//
//  ViewController.swift
//  persistence
//
//  Created by Bailey Yingling on 2/8/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    var reds: [CGFloat] = [0.9]
    var greens: [CGFloat] = [0.4]
    var blues: [CGFloat] = [0.1]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        let defaults = UserDefaults.standard
        if let storedReds = defaults.array(forKey: "ArrayOfReds"), let storedGreens = defaults.array(forKey: "ArrayOfGreens"), let storedBlues = defaults.array(forKey: "ArrayOfBlues") {
            reds = storedReds as! [CGFloat]
            greens = storedGreens as! [CGFloat]
            blues = storedBlues as! [CGFloat]
        }
        addTwenty()
    }

    @IBAction func whenAddButtonPressed(_ sender: UIBarButtonItem) {
        reds.append(CGFloat.random(in: 0...1))
        greens.append(CGFloat.random(in: 0...1))
        blues.append(CGFloat.random(in: 0...1))
        collectionView.reloadData()
        let defaults = UserDefaults.standard
        defaults.setValue(reds, forKey: "ArrayOfReds")
        defaults.setValue(greens, forKey: "ArrayOfGreens")
        defaults.setValue(blues, forKey: "ArrayOfBlues")
    }
    
    // Save button is now a reset button
    @IBAction func whenSaveButtonPressed(_ sender: UIBarButtonItem) {
        reds.removeAll()
        greens.removeAll()
        blues.removeAll()
        collectionView.reloadData()
        let defaults = UserDefaults.standard
        defaults.setValue(reds, forKey: "ArrayOfReds")
        defaults.setValue(greens, forKey: "ArrayOfGreens")
        defaults.setValue(blues, forKey: "ArrayOfBlues")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return reds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.contentView.backgroundColor = UIColor(displayP3Red: reds[indexPath.row], green: greens[indexPath.row], blue: blues[indexPath.row], alpha: 1)
        return cell
    }
    
    func addTwenty() {
        for _ in 1...20 {
            reds.append(CGFloat.random(in: 0...1))
            greens.append(CGFloat.random(in: 0...1))
            blues.append(CGFloat.random(in: 0...1))
            collectionView.reloadData()
        }
        let defaults = UserDefaults.standard
        defaults.setValue(reds, forKey: "ArrayOfReds")
        defaults.setValue(greens, forKey: "ArrayOfGreens")
        defaults.setValue(blues, forKey: "ArrayOfBlues")
    }
    
}

