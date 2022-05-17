//
//  HauntedHouseViewController.swift
//  MadLib Group Project
//
//  Created by Jessica Gonzalez on 5/13/22.
//

import UIKit

class HauntedHouseViewController: UIViewController {

    @IBOutlet weak var adjetive1: UITextField!
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var adjetive2: UITextField!
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var adjetive3: UITextField!
    @IBOutlet weak var bodyPart1: UITextField!
    @IBOutlet weak var bodyPart2: UITextField!
    @IBOutlet weak var name2: UITextField!
    
    @IBOutlet weak var labelEnter: UILabel!
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        labelEnter.text = "It was a dark and " + adjetive1.text! + " night. The house across the street had been abandoned for as long as I can remember. I called up " + name1.text! + " and asked if they wanted to help me sneak into the house. “Why do you want to go inside that house?” “Well, because I am " + adjetive2.text! + ".” “Well I’m not. Goodnight.""They hung up. Oh well, guess I will go on my own. I grabbed my trusty " + noun1.text! + "and was on my way. The door to the house was locked so I decided to " + verb1.text! + " the door. “Wow, it actually worked. " +  adjetive3.text! + "!” I entered the house and the door immediately shut behind me. It was too dark and I couldn’t move. I felt a cold " + bodyPart1.text! + " touch my " + bodyPart2.text! + ". I ran out the door and back into my home. I looked out the window into the house to see " + name2.text! + " looking back at me."
    }
}
