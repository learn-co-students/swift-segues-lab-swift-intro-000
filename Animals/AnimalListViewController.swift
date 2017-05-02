//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var animals: [String] = ["Cat",
                             "Dog",
                             "Mouse",
                             "Hamster",
                             "Bunny",
                             "Panda",
                             "Lion",
                             "Pig",
                             "Frog",
                             "Octopus"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animalName = animals[indexPath.row]
        cell.textLabel?.text = animalName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "AnimalDetailView" else { return }
        if let destination = segue.destination as? AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            destination.animal = animals[indexPath.row]
        }
        
    }
}
