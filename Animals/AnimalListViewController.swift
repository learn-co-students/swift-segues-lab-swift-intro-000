//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController
{
    var animals = ["Dog", "Cat", "Mouse","Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier != "AnimalDetailView"
        {
            return
        }
        
        if let desVC = segue.destination as? AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow
        {
                desVC.animalBeingSet = indexPath.row
                desVC.animalName = animals[indexPath.row]
        }
    
    }
            
    
}
