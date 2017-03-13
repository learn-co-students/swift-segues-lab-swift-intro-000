//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var listOfAnimals: [String] = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "frog", "Octopus"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfAnimals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theCell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let cellTitle = listOfAnimals[indexPath.row]
        theCell.textLabel?.text = cellTitle
        
        return theCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "AnimalDetailView" { return }
        
        if let dest = segue.destination as?
            AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.animal = listOfAnimals[ (indexPath as NSIndexPath).row]
        }
        
    }
}
