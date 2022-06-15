//
//  80sMovieViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class _0sMovieViewController: UIViewController {
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
        
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    
                // Create a variable to store the name the user entered on textField
                let animal = animal.text ?? ""
                let timeofday = timeofday.text ?? ""
                let adjective = adjective.text ?? ""
                let verb1 = verb1.text ?? ""
                let verb2 = verb2.text ?? ""
                let noun1 = noun1.text ?? ""
                let adverb1 = adverb1.text ?? ""
                let place = place.text ?? ""
                let noun2 = noun2.text ?? ""
                    
                // Create a new variable to store the instance of the SecondViewController
                // set the variable from the SecondViewController that will receive the data
                let destinationVC = segue.destination as! EightiesStoryViewController
                destinationVC.animal = animal
                destinationVC.timeofday = timeofday
                destinationVC.adjective = adjective
                destinationVC.verb1 = verb1
                destinationVC.verb2 = verb2
                destinationVC.noun1 = noun1
                destinationVC.noun2 = noun2
                destinationVC.adverb1 = adverb1
                destinationVC.place = place
                
            }
        }

