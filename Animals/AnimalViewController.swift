//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    
    var animal2Display: String?

    let animal2Emoji: Dictionary = [
        "Dog": "🐶",
        "Cat": "🐱",
        "Mouse": "🐭",
        "Hamster": "🐹",
        "Bunny": "🐰",
        "Panda": "🐼",
        "Lion": "🦁",
        "Pig": "🐷",
        "Frog": "🐸",
        "Octopus": "🐙"
    ]
    
    
    @IBOutlet weak var emojiLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        if let animal2Display = animal2Display {
           nameLable.text = animal2Display
           
            if let emoji = animal2Emoji[animal2Display] {
                emojiLable.text = emoji
                
            }
            
        }
    }
    
}


