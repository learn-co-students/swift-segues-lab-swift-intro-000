//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {

    
    var typeOfAnimals: [String] = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeOfAnimals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animalBreed = typeOfAnimals[indexPath.row]
        cell.textLabel?.text = animalBreed
        
        return cell
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "AnimalDetailView" { return }
        
                if let dest = segue.destination as?
                    AnimalViewController {
                    
                    
                    if let selectedAnimal = tableView.indexPathForSelectedRow {
                    dest.animal = typeOfAnimals[(selectedAnimal as NSIndexPath).row]
                }
    
           }
    }


}
