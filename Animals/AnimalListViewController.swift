//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    var animals = [
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
    let reuseIdentifier = "AnimalIdentifier"
    let showAnimalIdentifier = "ShowAnimalDetails"
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let animal = animals[indexPath.row]
        cell.textLabel?.text = animal
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == showAnimalIdentifier else { return }
        if let destination = segue.destination as? AnimalViewController, let indexPath = tableView.indexPathForSelectedRow {
            let animal = animals[indexPath.row]
            destination.animal = animal
            destination.navigationItem.title = animal
        }
    }
    
}
