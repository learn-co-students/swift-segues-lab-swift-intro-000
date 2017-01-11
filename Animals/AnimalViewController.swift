//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var BigLabel: UILabel!
    @IBOutlet weak var SmallLabel: UILabel!
    
    var animalName : String?
    
    override func viewWillAppear(_ animated: Bool) {
        SmallLabel.text = animalName;
        BigLabel.text = getEmoji(animalName!);
        
        self.title = animalName;
    }
    
    func getEmoji(_ name : String) -> String {
        switch name {
        case "Dog": return "🐶";
        case "Cat": return "🐱";
        case "Mouse": return "🐭";
        case "Hamster": return "🐹";
        case "Bunny": return "🐰";
        case "Panda": return "🐼";
        case "Lion": return "🦁";
        case "Pig" : return "🐷";
        case "Frog" : return "🐸";
        case "Octopus" : return "🐙";
        default: return "";
        }
    }
}
