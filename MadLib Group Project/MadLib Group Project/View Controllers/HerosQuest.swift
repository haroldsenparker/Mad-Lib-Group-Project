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
    @IBOutlet weak var adjective1: UITextField!
    @IBOutlet weak var adjective2: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var noun3: UITextField!
    @IBOutlet weak var adjective3: UITextField!
    @IBOutlet weak var name2: UITextField!
    
    @IBAction func enterButtonPushed(_ sender: Any) {
        guard !name1.text!.isEmpty else {
            print("This be empty.")
            return
        }
        performSegue(withIdentifier: "displayStory", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DisplayStoryViewController
        destinationVC.madlib = currentMadLib()
    }
    
    func currentMadLib() -> Madlib? {
        let stories = [story1()!, story2()!, story3()!]
        return Madlib(backgroundColor: .blue, stories: stories)
    }
    
    func story1() -> String? {
       return "\"Hero! You’re finally here! We must stop \(name1.text!) from taking over the land of \(noun1.text!)!\" You and your trusty \(noun2.text!) head out deep in the woods where your arch nemesis resides.\"Watch out hero! Here comes a monster! The monster looks rather \(adjective1.text!). Quick! Use your \(adjective2.text!) sword to slay the monster!\" You defeat the monster with ease and move forward. After defeating many monsters, you finally reach your destination. \"Look, Hero, there they are! Now is the perfect time to attack!\" You reach for your sword and \(verb1.text!) towards the enemy. You scream with all your might, SWORD OF \(noun3.text!), LEND ME YOUR STRENGTH! The sword glows and next thing you know, your foe has been defeated. \"Wow, that was \(adjective3.text!), hero!\" You pause for a moment and reply with “Actually, my name is \(name2.text!)."
    }
    
    func story2() -> String? {
        return "I woke up one morning and was dressed in a leotard. I also noticed that I had super powers! I could \(verb1.text!) and run really \(adjective1.text!)! I like being a superhero. It makes me feel \(adjective2.text!). I wanted to help more people. So, I went around town and looked for a \(noun1.text!) who needed my help. After a long day of being a super hero, I was \(adjective3.text!) to go home and get some rest."
    }
    
    func story3() -> String? {
        return "Let me introduce you to my dragon friend, \(name1.text!)! How we met is a weird story. When I was little, I traveled to a \(adjective1.text!) cave with my pet kinkajou, \(name2.text!), and met my dragon friend after hearing loud flapping of wings. When \(name1.text!) landed right next to me, \(name2.text!) fainted on my shoulder! I thought the dragon looked \(adjective2.text!), and I burst out laughing, and then he did too! We started talking about how we both like \(verb1.text!), and it soon turned to friendship!"
    }
}
