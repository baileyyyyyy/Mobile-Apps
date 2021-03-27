//
//  ViewController.swift
//  Seinfeld
//
//  Created by Bailey Yingling on 1/20/21.
//

import UIKit
import SafariServices
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var getALoadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getALoadButton(_ sender: UIButton) {
        getALoadButton.clipsToBounds = true
        getALoadButton.contentMode = .scaleAspectFill
        getALoadButton.setImage(UIImage(named: "getALoad"), for: .normal)
    }
    
    
    @IBAction func heyButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com/watch?v=RBmoQSHfO2U") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
    }
    //this doesn't work
    @IBAction func shrugButton(_ sender: UIBarButtonItem) {
        alert()
    }
    
    var sound: AVAudioPlayer?
    
    func playSound(fileName: String) {
        if let path = Bundle.main.path(forResource: fileName, ofType: "mp3") {
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
    
    //this doesn't work
    func alert() {
    let alert = UIAlertController(title: "pain.", message: nil, preferredStyle: .alert)
    
    let ok = UIAlertAction (title: "ok", style: .cancel)
    
    alert.addAction(ok)
        
    self.present(alert, animated: true)
    }
    
    
    @IBAction func themeButton(_ sender: UIButton) {
        playSound(fileName: "theme")
    }
    
}

