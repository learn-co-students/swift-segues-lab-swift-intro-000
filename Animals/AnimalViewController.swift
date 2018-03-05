//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    //#MARK: Properties
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = animal {
            textLabel.text = animal
            navigationItem.title = animal
            emojiLabel.text = getAnimalEmoji(animal)
        }
    }
    
    //#MARK: Methods
    func getAnimalEmoji(_ animal: String) -> String {
        switch animal {
        case "Dog":
            return "🐶"
        case "Cat":
            return "😸"
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
        default:
            return "🐙"
        }
    }
}
