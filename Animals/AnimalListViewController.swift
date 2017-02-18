//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    @IBOutlet var animalTableView: UITableView!
    var animals: [String] = [
        "Dog",
        "Cat",
        "Mouse",
        "Hamster",
        "Bunny",
        "Panda",
        "Lion",
        "Pig",
        "Frog",
        "Octopus"
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animalCell = animalTableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animal = animals[(indexPath as NSIndexPath).row]
        
        animalCell.textLabel?.text = animal
        
        return animalCell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "AnimalDetailView" {
            return
        }
        if let dest = segue.destination as? AnimalViewController {
            
            if let selectedAnimal = animalTableView.indexPathForSelectedRow {
                dest.animal = animals[(selectedAnimal as NSIndexPath).row]
            }
        }
    }
}
