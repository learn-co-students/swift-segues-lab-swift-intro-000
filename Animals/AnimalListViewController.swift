//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    let animals: [String] = [
        "🐶",
        "🐱",
        "🐭",
        "🐹",
        "🐰",
        "🐼",
        "🦁",
        "🐷",
        "🐸",
        "🐙"
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // since only one segue
        if segue.identifier != "AnimalDetailView" { return }
            
        if let destVC = segue.destination as? AnimalViewController, let indexPath = tableView.indexPathForSelectedRow {
            destVC.animal = animals[indexPath.row]
        }
        
    }
}
