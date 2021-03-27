//
//  ViewController.swift
//  tableView
//
//  Created by Bailey Yingling on 2/7/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let names = ["Tyrone", "Ian", "Gibson", "Jeff", "Zuckerberg", "Karen", "George", "Sam", "Elizabeth", "X AE A-XII"]
    let ages = ["22", "16", "16", "29", "19",  "23", "47", "22", "32", "1"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = ages[indexPath.row]
        cell.imageView?.image = UIImage(named: names[indexPath.row])
        return cell
    }
}
