//
//  HauntedHouseViewController.swift
//  MadLib Group Project
//
//  Created by Jessica Gonzalez on 5/13/22.
//

import UIKit

class HauntedHouseViewController: UIViewController {

    @IBOutlet weak var adjective1: UITextField!
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var adjetive2: UITextField!
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var adjetive3: UITextField!
    @IBOutlet weak var bodyPart1: UITextField!
    @IBOutlet weak var bodyPart2: UITextField!
    @IBOutlet weak var name2: UITextField!
    
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        guard !adjective1.text!.isEmpty else {
            print("Please fill in all text fields.")
            return
        }
        performSegue(withIdentifier: "displayStory", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DisplayStoryViewController
        destinationVC.madlib = currentMadLib()
    }
    func currentMadLib() -> Madlib? {
        let spooky = [story1()!, story2()!]
        return Madlib(backgroundColor: .purple, stories: spooky)
    }
    
    func story1() -> String? {
        return "It was a dark and \(adjective1.text!) night. The house across the street had been abandoned for as long as I can remember. I called up \(name1.text!) and asked if they wanted to help me sneak into the house. 'Why do you want to go inside that house?' ' Well, because I am \(adjetive2.text!)' 'Well I’m not. Goodnight.' They hung up. Oh well, guess I will go on my own. I grabbed my trusty \(noun1.text!) and was on my way. The door to the house was locked so I decided to \(verb1.text!) the door. 'Wow, it actually worked. \(adjetive3.text!)!' I entered the house and the door immediately shut behind me. It was too dark and I couldn’t move. I felt a cold \(bodyPart1.text!) touch my \(bodyPart2.text!). I ran out the door and back into my home. I looked out the window into the house to see \(name2.text!) looking back at me."
    }
    
    func story2() -> String? {
        return "He awoke to the huge, \(noun1.text!) like creatures looming over his bed and screamed his \(bodyPart1.text!) out. They hastily left the room and he stayed up all night, \(verb1.text!) and wondering if it had been a dream. The next morning, there was a tap on the door. Gathering his courage, he opened it to see \(name1.text!) gently place a plate filled with fried breakfast on the floor, then retreat to a safe distance. Bewildered, he accepted the gift. The creatures chittered excitedly. This happened every day for weeks. At first he was \(adjective1.text!) they were fattening him up, but after a particularly greasy breakfast left him clutching his chest from heartburn, they were replaced with \(adjetive2.text!) fruit. As well as cooking, they poured hot steamy baths for him and even tucked him in when he went to bed. It was bizarre. One night, he awoke to gunshots and screaming. He raced downstairs to find a decapitated burglar being devoured by the creatures. He was \(adjetive3.text!), but disposed of the remains as best he could. He knew they had just been protecting him. One morning the creatures wouldn't let him leave his room. He lay down, confused but trusting as they ushered him back into bed. Whatever their motives, they weren't going to hurt him. Hours later a burning pain spread throughout his body. It felt like his \(bodyPart2.text!) was filled with razor wire. The creatures chittered as he spasmed and moaned. It was only when he felt a terrible squirming feeling beneath his \(bodyPart2.text!) that he realised the creatures hadn't been protecting him. They had been protecting their young."
    }
}
