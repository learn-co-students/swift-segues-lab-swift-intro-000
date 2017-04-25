//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
  
  @IBOutlet weak var emojiLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  
  var animal: String?
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    if let animal = animal {
      nameLabel?.text = animal
      let animalEmoji = nameToEmoji(animal)
      emojiLabel?.text = animalEmoji
      navigationItem.title = animal
    }
  }
  
  fileprivate func nameToEmoji(_ name: String) -> String {
    switch name {
    case "Dog":
      return "🐶"
    case "Cat":
      return "🐱"
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
    case "Octopus":
      return "🐙"
    default:
      return ""
    }
  }
}
