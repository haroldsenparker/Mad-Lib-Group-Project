//
//  GoosebumpsViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class GoosebumpsViewController: UIViewController {

    @IBOutlet var name1: UITextField!
    @IBOutlet var name2: UITextField!
    @IBOutlet var place: UITextField!
    @IBOutlet var adj1: UITextField!
    @IBOutlet var adj2: UITextField!
    @IBOutlet var adj3: UITextField!
    
    @IBOutlet var lblEnter: UILabel!
    
    @IBAction func btnEnter(_ sender: Any) {
        let stories: NSArray = ["Name1 and Name2 think the old place1 they have just moved into is weird. Spooky. Possibly adjective1. And the town of Dark Falls is pretty adjective2, too. But their parents don't believe them. You'll get used to it, they say. Go out and make some adjective3 friends. So Name1 and Name2 do. But these new friends are not exactly what their parents had in mind. Because they want to be friends......forever.", "Name1 thinks there is something wrong with the old camera he and his friends found. The photographs keep turning out wrong. Very wrong. Like the snapshot Name1 took of his father's new car that shows it totaled. And then Name1’'s father is in a nasty wreck. But Name1’'s friends don't believe him. Name2 even makes Name1 bring the camera to her birthday party and take her picture. Only Name2 ’s not in the photograph when it develops. Is Name2 about to be taken out of the picture permanently? Who is going to take the next fall for... the evil camera?", "When Name1 finds a dusty old piano in the place of his new house, his parents offer to pay for lessons. At first, taking piano seems like a cool idea. But there's something creepy about Name1's piano teacher, Dr. Name2. Something creepy. Something Name1 can't quite put his finger on. Then Name1 hears the stories. Terrifying stories. About the students at Dr. Name2's music school. Students who went in for a lesson... and never came out."]
        let numbers: UInt32 = UInt32(stories.count)
        let randomNumber = Int(arc4random_uniform(numbers))
            let storyString = stories.object(at: randomNumber)
            self.lblEnter.text = storyString as? String
    }
    
}

