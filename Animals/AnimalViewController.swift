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
        super.viewWillAppear(animated)
        if let animal = animal {
            animalNameLabel.text = animal
            navigationItem.title = animal
            
            animalEmojiLabel?.text = nameToEmoji(animal)
        }

    }
    
    func nameToEmoji(_ name: String) -> String {
        switch name {
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
        case "Cow":
            return "🐮"
        case "Octopus":
            return "🐙"
        case "Turtle":
            return "🐢"
        case "Spider":
            return "🕷"
        default:
            return ""
        }
    }
}
