//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var animal = ""
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animalLabel.text = animal
        emojiLabel.text = textToEmoji(animal)
    }
    fileprivate func textToEmoji(_ text: String) -> String {
        switch text {
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
