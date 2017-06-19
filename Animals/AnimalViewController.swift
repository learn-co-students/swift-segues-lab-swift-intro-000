//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalEmojiLabel: UILabel!
    
    var animal: String?;
    
    let animalEmoji = [
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
    ];
    
    override func viewWillAppear(_ animated: Bool) {
        
        guard let animal = self.animal else { return; }
        
        animalNameLabel.text = animal;
        animalEmojiLabel.text = animalEmoji[animal];
        
        navigationItem.title = animal;
    }
    
}
