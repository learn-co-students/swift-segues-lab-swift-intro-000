//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    let animals: [String] = ["Dog",
                            "Cat",
                            "Mouse",
                            "Hamster",
                            "Bunny",
                            "Panda",
                            "Lion",
                            "Pig",
                            "Frog",
                            "Octopus"]
    let animalsDict: [String:String] = ["Dog": "🐶",
                                    "Cat": "🐱",
                                    "Mouse": "🐭",
                                    "Hamster": "🐹",
                                    "Bunny": "🐰",
                                    "Panda": "🐼",
                                    "Lion": "🦁",
                                    "Pig": "🐷",
                                    "Frog": "🐸",
                                    "Octopus": "🐙"]
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    // Draws the listings
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        let animal = animals[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = animal
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "ShowAnimalDetails" { return }
        if let dest = segue.destination as? AnimalViewController,
            // This lets your code know which cell actually triggered the transition.
            let indexPath = tableView.indexPathForSelectedRow {
            // Set the fruit property on the destination view controller
            dest.animal = animalsDict[animals[(indexPath as NSIndexPath).row]]
            dest.animalTitle = animals[(indexPath as NSIndexPath).row]
        }
    }
}
