//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojidescription: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        if let animal = animal {
            emojidescription?.text = animal
            navigationItem.title = animal
            
            let animalEmoji = animalToEmoji(animal)
            emojiLabel?.text = animalEmoji
            }
        }
    
    func animalToEmoji(_ animalName: String) -> String {
        switch animalName {
        case "Dog":
            return "🐶"
        case "Cat":
            return " 🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return " 🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return ""
        }
    }
}

