//
//  MainViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 6/7/22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func randomPressed(_ sender: Any) {
        let segues =  ["pushEighties", "pushGoosebumps", "pushHero"]
        let randomSegue = segues.randomElement()!
        self.performSegue(withIdentifier: randomSegue, sender: self)
        print(randomSegue)
    }
    
}
