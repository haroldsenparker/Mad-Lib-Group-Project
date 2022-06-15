//
//  DisplayStoryViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 6/15/22.
//

import UIKit

struct Madlib {
    var backgroundColor: UIColor
    var stories: [String]
}

class DisplayStoryViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!

    var madlib: Madlib?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = madlib?.stories.randomElement()
    }

    @IBAction func newStoryButtonPressed(_ sender: Any) {
        storyLabel.text = madlib?.stories.randomElement()
    }
}
