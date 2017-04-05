//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var emoji: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = animal {
            emoji?.text = animal
            
            let animalName = emojiToName(animal)
            name?.text = animalName
            navigationItem.title = animalName
        }
    }
    
    fileprivate func emojiToName(_ emoji: String) -> String {
        switch emoji {
            case "Dog":
                    return "🐶"
                    case "Cat":
                        return  "🐱"
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
