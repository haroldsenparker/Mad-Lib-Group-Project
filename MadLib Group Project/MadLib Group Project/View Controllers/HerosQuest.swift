//
//  JessicaViewController2.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class HerosQuest: UIViewController {

    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var adjetive1: UITextField!
    @IBOutlet weak var adjetive2: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var noun3: UITextField!
    @IBOutlet weak var adjetive3: UITextField!
    @IBOutlet weak var name2: UITextField!
    
    
    @IBOutlet weak var labelEnter: UILabel!
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        labelEnter.text = "“Hero! You’re finally here! We must stop " + name1.text! + " from taking over the land of " + noun1.text! + "!“ You and your trusty " + noun2.text! + "head out deep in the woods where your arch nemesis resides. “Watch out hero! Here comes a monster!” The monster looks rather " + adjetive1.text! + ". “Quick! Use your " + adjetive2.text! + " sword to slay the monster!” You defeat the monster with ease and move forward. After defeating many monsters, you finally reach your destination. “Look Hero, there they are! Now is the perfect time to attack!” You reach for your sword and " + verb1.text! + " towards the enemy. You scream with all your might, “SWORD OF " + noun3.text! + ", LEND ME YOUR STRENGTH!” The sword glows and next thing you know, your foe has been defeated. “Wow, that was " + adjetive3.text! + " hero!” You pause for a moment and reply with “Actually, my name is " + name2.text! + "."
    }
}
