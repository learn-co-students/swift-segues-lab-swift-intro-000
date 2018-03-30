//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    
    
    // MARK: - property
    
    var animalText: String = ""
    
    var animalEmojiDict: [String: String] = ["Dog": "🐶",
                                             "Cat" :"🐱",
                                             "Mouse": "🐭",
                                             "Hamster": "🐹",
                                             "Bunny" :"🐰",
                                             "Panda": "🐼",
                                             "Lion": "🦁",
                                             "Pig": "🐷",
                                             "Frog" : "🐸",
                                             "Octopus": "🐙"]
    
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animalLabel.text = animalText
        if let animalEmoji = animalEmojiDict[animalText] {
            emojiLabel.text = animalEmoji
        }
        navigationItem.title = animalText
    }
}
