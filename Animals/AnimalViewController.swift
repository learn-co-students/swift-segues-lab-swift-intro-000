//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var topBigLabel: UILabel!
    @IBOutlet weak var bottomSmallLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        guard let animal = animal else { return }
        
        bottomSmallLabel.text = animal
        if let emoji = emojiForAnimal(animal) {
            topBigLabel.text = emoji
        }
        navigationItem.title = animal
    }
    
}

// MARK: - Helper Methods
extension AnimalViewController {
    fileprivate func emojiForAnimal(_ animal: String) -> String? {
        switch animal {
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
        default: return nil
        }
    }
}
