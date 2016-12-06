//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    var animals = ["Dog","Cat","Mouse","Hamster","Bunny","Panda","Lion","Pig","Frog","Octopus",]

    //Purpose: return chosen cell
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    //external name is indication of what it returns i.e numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animals.count
        
    }
    
    //external name is indication of what it returns i.e cellForRowAt
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        
        let name = animals[indexPath.row]
        
        cell.textLabel?.text = name
        print("***name=\(name)")
        
        return cell
    }
    
    //my: set the data in the destination controller class
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? AnimalViewController, let indexPath = tableView.indexPathForSelectedRow {
                dest.animalName = animals[indexPath.row]
        }
        
    
    }
}
