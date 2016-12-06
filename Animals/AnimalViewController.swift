//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var emojiName: UILabel!
    
    
    var animalName: String?
    
    func name2emoji(name:String)->String {
        switch name {
            case "Dog": return "🐶"
            case "Cat": return "🐱"
            case "Mouse": return "🐭"
            case "Hamster": return "🐹"
            case "Bunny": return "🐰"
            case "Panda": return "🐼"
            case "Lion": return "🦁"
            case "Pig": return "🐷"
            case "Frog": return "🐸"
            case "Octopus": return "🐙"
            default: return "☹️"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let animalName = animalName {
                emojiName.text = animalName
                emoji.text = name2emoji(name: animalName)
                navigationItem.title = animalName
        }
    }
    
 
        
    
}
