//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController
{
    var animalEmoji = ["🐶", "🐱", "🐭", "🐹", "🐰", "🐼", "🦁", "🐷", "🐸", "🐙" ]
    
    @IBOutlet weak var labelAnimalText: UILabel!
    @IBOutlet weak var labelAnimalIcon: UILabel!
    
    var animalBeingSet: Int?
    var animalName: String?
    
    
    override func viewWillAppear(_ animated: Bool)
    {
        labelAnimalIcon.text = animalEmoji[animalBeingSet!]
        labelAnimalText.text = animalName
        self.title = animalName
    }
    
}
