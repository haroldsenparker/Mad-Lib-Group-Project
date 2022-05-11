//
//  80sMovieViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class _0sMovieViewController: UIViewController {

    @IBOutlet var animal: UITextField!
    @IBOutlet var timeOfDay: UITextField!
    @IBOutlet var adjective1: UITextField!
    @IBOutlet var verb1: UITextField!
    @IBOutlet var verb2: UITextField!
    @IBOutlet var noun1: UITextField!
    @IBOutlet var adverb1: UITextField!
    @IBOutlet var place: UITextField!
    @IBOutlet var noun2: UITextField!
    
    @IBOutlet var lblEnter: UILabel!
    
    @IBAction func btnEnter(_ sender: Any) {
        let stories: NSArray = ["One day, Jack Burton came across a giant, mutated animal on the top of his truck during the time of day. The monster was adjective1 and was verb1 around wildly. Jack destroyed this creature with a noun1 and slowly slumped to the ground. From where it came, he knew not, but he had a strong inclination it was from the place. He proclaimed aloud: Just remember what ol’ Jack Burton does when the earth quakes, and the poison arrows fall from the sky, and the pillars of Heaven shake. Yeah, Jack Burton just looks that big ol’ noun2  right square in the eye and he says, “Give me your best shot, pal. I can take it.” ",  "Jack Slater is an everyday normal adjective1 man. One time of day, a noun1 explodes nearby, he soon realizes that he is being chased by the government who’s trying to verb1 him.  While on the run, he teams up with an incredibly attractive animal with an incredible power to turn into noun2. The duo decides to turn the tables by blowing up place1 that causes the local police to verb2. "
           , "Gizmo the Mogwai was just going about his day in the “time of day”, when suddenly an “animal” appeared across his path. It was unlike anything he has seen before! It has somehow been corrupted by his archenemy, Stripe. According to its now “adjective” eyes and a stripe running down the front of its head like a tattoo, it seems like that is the case. It suddenly “verb1” towards Gizmo and “verb2” him in the face. Since, Stripe attacked the Clamp Center, he trained, and gained proficiency in “noun1”. So, he put this sad, little creature out to the pasture. "]
        let numbers: UInt32 = UInt32(stories.count)
        let randomNumber = Int(arc4random_uniform(numbers))
            let storyString = stories.object(at: randomNumber)
            self.lblEnter.text = storyString as? String
    }
    
}
