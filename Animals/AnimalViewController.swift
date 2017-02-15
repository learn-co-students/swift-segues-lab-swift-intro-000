//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var bigLabelForEmoji: UILabel!
    @IBOutlet weak var smallLabelForText: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = animal {
            bigLabelForEmoji?.text = animal
            
            let animalName = emojiToName(animal)
            smallLabelForText?.text = animalName
            navigationItem.title = animalName
        }
    }
    
    func emojiToName(_ emoji: String) -> String {
        switch emoji {
        case "🐶":
            return "Dog"
        case "🐱":
            return "Cat"
        case "🐭":
            return "Mouse"
        case "🐹":
            return "Hamster"
        case "🐰":
            return "Bunny"
        case "🐼":
            return "Panda"
        case "🦁":
            return "Lion"
        case "🐷":
            return "Pig"
        case "🐸":
            return "Frog"
        case "🐙":
            return "Octopus"
        default:
            return ""
        }
    }
    
}
