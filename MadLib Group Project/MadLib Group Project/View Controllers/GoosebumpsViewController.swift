//
//  GoosebumpsViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class GoosebumpsViewController: UIViewController {

    
    
    
    
    
    
    @IBOutlet var lblEnter: UILabel!
    
    @IBAction func btnEnter(_ sender: Any) {
        let stories: NSArray = ["chigga", "boy", "freddie"]
        let numbers: UInt32 = UInt32(stories.count)
        let randomNumber = Int(arc4random_uniform(numbers))
            let storyString = stories.object(at: randomNumber)
            self.lblEnter.text = storyString as? String
    }
    
}

