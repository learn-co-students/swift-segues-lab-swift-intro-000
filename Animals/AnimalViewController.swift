//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var animalSent = ""
    
    @IBOutlet weak var largeLabel: UILabel!
    @IBOutlet weak var smallLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        smallLabel.text = animalSent
        largeLabel.text = animalName(animalSent)
    }
    
    func animalName(_ name: String) -> String {
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
        case "Octopus":
            return "🐙"
        default:
            return "Error"
            }
    }
}
