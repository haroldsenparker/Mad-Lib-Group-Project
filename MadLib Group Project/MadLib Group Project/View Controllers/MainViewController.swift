//
//  MainViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 6/7/22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func randomPressed(_ sender: Any) {
        let segues =  ["pushEighties", "pushGoosebumps", "pushHero", "pushDream", "pushHaunted"]
        let randomSegue = segues.randomElement()!
        self.performSegue(withIdentifier: randomSegue, sender: self)
    }
    
    @IBAction func hauntedHousePressed(_ sender: Any) {
        self.performSegue(withIdentifier: "pushHaunted", sender: self)
    }
    @IBAction func eightiesPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "pushEighties", sender: self)
    }
    @IBAction func dreamPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "pushDream", sender: self)
    }
    @IBAction func heroPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "pushHero", sender: self)
    }
    @IBAction func goosebumpsPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "pushGoosebumps", sender: self)
    }
    
}
