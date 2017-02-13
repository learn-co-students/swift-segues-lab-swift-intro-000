//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    var animals = ["Dog", "Cat","Mouse", "Hamster", "Bunny","Panda","Lion","Pig","Frog","Octopus"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        let title = animals[indexPath.row]
        cell.textLabel?.text = title
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // make sure it's the right identifier yo
        if segue.identifier != "AnimalDetailView" { return }
        // make the destination an animal view controller
        // make the destination's animal the animal that from this row
        if let dest = segue.destination as? AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow {
       
            dest.animal = animals[(indexPath as NSIndexPath).row]
        }
    }
}
