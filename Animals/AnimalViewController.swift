//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var bigLabel: UILabel!
    @IBOutlet weak var littleLabel: UILabel!
    
    var animal : String?

    override func viewWillAppear(_ animated: Bool) {
        if let safeAnimal = animal {
            littleLabel.text = safeAnimal
            bigLabel.text = convertToEmoji(name: safeAnimal)
            self.navigationItem.title = safeAnimal
        }
        
        
        
    }
    
    func convertToEmoji(name: String) -> String {
        switch name {
        case "Dog":
           return "🐶"
        case "Cat":
           return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
           return  "🐹"
        case "Bunny":
           return  "🐰"
        case "Panda":
           return  "🐼"
        case "Lion":
           return  "🦁"
        case "Pig":
           return  "🐷"
        default:
           return  "🐸"
        }
    }
}


