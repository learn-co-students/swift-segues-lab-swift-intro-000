//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var animalEmoji: UILabel!
    @IBOutlet weak var animalName: UILabel!
    
    var animal:String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if let animal = animal {
        
            animalName.text = animal
            animalEmoji.text = getEmoji(name: animal)
            navigationItem.title = animal
        
        }
        
        
    }
    
    
    func getEmoji(name:String)->String{
    
        switch name {
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐈"
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
