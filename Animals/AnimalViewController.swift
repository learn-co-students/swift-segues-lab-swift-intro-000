//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var animal: String?
    @IBOutlet weak var animalEmojiLabel: UILabel!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        if let animal = animal {
            navigationItem.title = animal
            animalEmojiLabel?.text = nameToEmoji(animal)
            animalNameLabel?.text = animal
        }
    }
    
    fileprivate func nameToEmoji(_ emoji: String) -> String {
        switch emoji {
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐱"
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
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return ""
        }
    }
}
