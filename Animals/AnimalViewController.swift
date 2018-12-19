//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var animal: String?
    var animalTitle: String?
    
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalTitleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = self.animal {
            animalLabel.text = animal
        }
        if let animalTitle = self.animalTitle {
            animalTitleLabel.text = animalTitle
            navigationItem.title = animalTitle
        }
    }
}
