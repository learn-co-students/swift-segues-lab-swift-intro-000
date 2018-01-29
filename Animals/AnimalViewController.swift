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
    
    @IBOutlet weak var animalName: UILabel!
    var animal: String?

    override func viewWillAppear(_ animated:Bool){
        if let animal = animal {
            animalName.text = animal
            animalEmoji.text = convertToEmoji(animal)
            navigationItem.title = animal
        }
    }
    func convertToEmoji(_ animalToConvert:String) -> String {
        switch(animalToConvert) {
        case "Dog" :
            return "🐶"
        case  "Cat" :
            return "🐱"
        case  "Mouse" :
            return "🐭"
        case "Hamster" :
            return "🐹"
        case "Bunny" :
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion" :
            return "🦁"
        case "Pig" :
            return "🐷"
        case "Frog" :
            return "🐸"
        case "Octopus" :
            return "🐙"
        default:
            return ""
        }
    }
}

