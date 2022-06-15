//
//  80sMovieViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class EightiesMovieViewController: UIViewController {
    @IBOutlet var animal: UITextField!
    @IBOutlet var timeofday: UITextField!
    @IBOutlet var adjective: UITextField!
    @IBOutlet var verb1: UITextField!
    @IBOutlet var verb2: UITextField!
    @IBOutlet var noun1: UITextField!
    @IBOutlet var adverb1: UITextField!
    @IBOutlet var place: UITextField!
    @IBOutlet var noun2: UITextField!
    
    
    @IBAction func btnEnter(_ sender: Any) {
        guard !animal.text!.isEmpty else {
            print("Hey one of these is empty")
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
        return Madlib(backgroundColor: .gray, stories: stories)
    }
    func story1() -> String? {
        return "One day, Jack Burton came across a giant, mutated \(animal.text!) on the top of his truck during the \(timeofday.text!). The monster was \(adjective.text!) and was \(verb1.text!) around wildly. Jack destroyed this creature with a \(verb2.text!) and slowly slumped to the ground. From where it came, he knew not, but he had a strong inclination it was from the \(place.text!). He proclaimed aloud: Just remember what ol’ Jack Burton does when the earth quakes, and the poison arrows fall from the sky, and the pillars of Heaven shake. Yeah, Jack Burton just looks that big ol’ \(noun2.text!) right square in the eye and he says, 'Give me your best shot, pal. I can take it.'"
    }
    
    func story2() -> String? {
        "Jack Slater is an everyday normal \(adjective.text!) man. One time of day, a \(noun1.text!) explodes nearby, he soon realizes that he is being chased by the government who’s trying to \(verb1.text!) him.  While on the run, he teams up with an incredibly attractive animal with an incredible power to turn into \(noun2.text!). The duo decides to turn the tables by blowing up place1 that causes the local police to \(verb2.text!). "
    }
    
    func story3() -> String? {
        "Gizmo the Mogwai was just going about his day in the \(timeofday.text!), when suddenly an \(animal.text!) appeared across his path. It was unlike anything he has seen before! It has somehow been corrupted by his archenemy, Stripe. According to its now \(adjective.text!) eyes and a stripe running down the front of its head like a tattoo, it seems like that is the case. It suddenly \(verb1.text!) towards Gizmo and \(verb2.text!) him in the face. Since, Stripe attacked the Clamp Center, he trained, and gained proficiency in \(noun1.text!). So, he put this sad, little creature out to the pasture. "
    }
}

