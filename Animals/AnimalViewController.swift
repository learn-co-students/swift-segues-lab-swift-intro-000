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
    @IBOutlet weak var emojiTextLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let selected_animal = animal{
            emojiTextLabel.text = selected_animal
            navigationItem.title = selected_animal
            
            emojiLabel.text = lookupEmoji(selected_animal)
            
        }
    }
    
    func lookupEmoji(_ stringVersion: String) -> String{
        switch stringVersion{
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
            return "unknown"
        }
    }
    
}
