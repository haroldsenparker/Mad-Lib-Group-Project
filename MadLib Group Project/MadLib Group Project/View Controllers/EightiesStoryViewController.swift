//
//  EightiesStoryViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/13/22.
//

import UIKit

class EightiesStoryViewController: UIViewController {

    @IBOutlet var storyLabel: UILabel!
    
    var animal: String = ""
    var timeofday: String = ""
    var adjective: String = ""
    var verb1: String = ""
    var verb2: String = ""
    var noun1: String = ""
    var noun2: String = ""
    var adverb1: String = ""
    var place: String = ""
    
    @IBAction func newStoryButton(_ sender: Any) {
        let stories = ["One day, Jack Burton came across a giant, mutated \(animal) on the top of his truck during the \(timeofday). The monster was \(adjective) and was \(verb1) around wildly. Jack destroyed this creature with a \(verb2) and slowly slumped to the ground. From where it came, he knew not, but he had a strong inclination it was from the \(place). He proclaimed aloud: Just remember what ol’ Jack Burton does when the earth quakes, and the poison arrows fall from the sky, and the pillars of Heaven shake. Yeah, Jack Burton just looks that big ol’ \(noun2) right square in the eye and he says, “Give me your best shot, pal. I can take it.” ",  "Jack Slater is an everyday normal \(adjective) man. One time of day, a \(noun1) explodes nearby, he soon realizes that he is being chased by the government who’s trying to \(verb1) him.  While on the run, he teams up with an incredibly attractive animal with an incredible power to turn into \(noun2). The duo decides to turn the tables by blowing up place1 that causes the local police to \(verb2). "
              , "Gizmo the Mogwai was just going about his day in the \(timeofday), when suddenly an \(animal) appeared across his path. It was unlike anything he has seen before! It has somehow been corrupted by his archenemy, Stripe. According to its now \(adjective) eyes and a stripe running down the front of its head like a tattoo, it seems like that is the case. It suddenly \(verb1) towards Gizmo and \(verb2) him in the face. Since, Stripe attacked the Clamp Center, he trained, and gained proficiency in \(noun1). So, he put this sad, little creature out to the pasture. "]
        var randomNumber = Int(arc4random_uniform(UInt32(stories.count)))
        storyLabel.text = stories[randomNumber]
    }
    
    @IBAction func takeHomeButton(_ sender: Any) {
        
    }
    
}
