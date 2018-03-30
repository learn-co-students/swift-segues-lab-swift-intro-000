//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    
    
    // MARK: - property
    
    var animals: [String] = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - UITableViewDataSource method
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let animal = animals[indexPath.row]
        cell.textLabel?.text = animal
        return cell
    }
    
    
    // MARK: - prepare
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "AnimalDetailView" {
            return
        }
        if let destinationVC = segue.destination as? AnimalViewController, let indexpath = tableView.indexPathForSelectedRow {
            destinationVC.animalText = animals[(indexpath as NSIndexPath).row]
        }
    }
    
}
