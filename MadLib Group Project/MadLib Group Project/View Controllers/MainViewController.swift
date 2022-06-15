//
//  MainViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 6/7/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func randomPressed(_ sender: Any) {
           let segues = ["pushDream", "pushHero", "pushGoosebumps", "pushEighties", "pushHaunted"]
           let index = Int(arc4random_uniform(UInt32(segues.count)))
           let segueName = segues[index]
           self.performSegue(withIdentifier: segueName, sender: self)
           
       }
       
       
   }

