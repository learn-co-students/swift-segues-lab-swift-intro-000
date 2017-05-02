//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalEmojiLabel: UILabel!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        if let animal = animal {
            animalNameLabel.text = animal
            navigationItem.title = animal
            
            switch animal {
            case "Dog":
                animalEmojiLabel.text = "🐶"
            case "Cat":
                animalEmojiLabel.text = "🐱"
            case "Hamster":
                animalEmojiLabel.text = "🐹"
            case "Mouse":
                animalEmojiLabel.text = "🐭"
            case "Bunny":
                animalEmojiLabel.text = "🐰"
            case "Panda":
                animalEmojiLabel.text = "🐼"
            case "Lion":
                animalEmojiLabel.text = "🦁"
            case "Pig":
                animalEmojiLabel.text = "🐷"
            case "Frog":
                animalEmojiLabel.text = "🐸"
            case "Octopus":
                animalEmojiLabel.text = "🐙"
            default:
                break
            }
        }
    }
}
