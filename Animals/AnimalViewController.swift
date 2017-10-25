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
    @IBOutlet weak var nameLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let animal = animal {
            emojiLabel?.text = animal
            
            let name = getEmojiName(animal)
            nameLabel?.text = name
            navigationItem.title = name
        }
    }
    
    func getEmojiName(_ animal: String) -> String {
        switch animal {
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
