//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalEmoji: UILabel!
    @IBOutlet weak var animalLabel: UILabel!

    var animal: String?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = animal {
            animalLabel?.text = animal
            animalEmoji?.text = animalToEmoji(animal)
            navigationItem.title = animal
        }
    }
    
        func animalToEmoji(_ animal: String) -> String {
            switch animal {
                case "dog":
                    return "🐶"
                case "cat":
                    return "🐱"
                case "mouse":
                    return "🐭"
                case "hamster":
                    return "🐹"
                case "bunny":
                    return "🐰"
                case "panda":
                    return "🐼"
                case "lion":
                    return "🦁"
                case "pig":
                    return "🐷"
                case "frog":
                    return "🐸"
                case "octopus":
                    return "🐙"
                default:
                    return ""
        
        }
    }
    
    
}
