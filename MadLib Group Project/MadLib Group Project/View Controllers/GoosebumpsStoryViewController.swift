//
//  GoosebumpsStoryViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 6/7/22.
//

import UIKit

class GoosebumpsStoryViewController: UIViewController {

    @IBOutlet var storyLabel: UILabel!
       
       var name1: String = ""
       var name2: String = ""
       var place: String = ""
       var noun1: String = ""
       var adj1: String = ""
       var adj2: String = ""
       var adj3: String = ""
       

       @IBAction func newStoryButton(_ sender: Any) {
           let stories = ["\(name1) and \(name2) think the old place1 they have just moved into is weird. Spooky. Possibly \(adj1). And the town of Dark Falls is pretty \(adj2), too. But their parents don't believe them. You'll get used to it, they say. Go out and make some \(adj3) friends. So, \(name1) and  \(name2) do. But these new friends are not exactly what their parents had in mind. Because they want to be friends......forever."
               , "\(name1) thinks there is something wrong with the old camera he and his friends found. The photographs keep turning out wrong. Very wrong. Like the snapshot \(name1) took of his father's new \(noun1) that shows it \(adj1). And then \(name1)’s father is in a nasty wreck. But \(name1)'s friends don't believe him. \(name2) even makes \(name1) bring the camera to her birthday party and take her picture. Only \(name2)’s not in the photograph when it develops. Is \(name2)  about to be taken out of the picture permanently? Who is going to take the next fall for...the evil camera?", "When  \(name1) finds a dusty old piano in the \(place) of his new house, his parents offer to pay for lessons. At first, taking piano seems like a cool idea. But there's something creepy about \(name1)'s piano teacher, Dr. \(name2). Something creepy. Something \(name1) can't quite put his finger on. Then, \(name1) hears the stories. \(adj1) stories. About the students at Dr. \(name2)'s music school. Students who went in for a lesson... and never came out."]
           var randomNumber = Int(arc4random_uniform(UInt32(stories.count)))
           storyLabel.text = stories[randomNumber]
       }

   }

