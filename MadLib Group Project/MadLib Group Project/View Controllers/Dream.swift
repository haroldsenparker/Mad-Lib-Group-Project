//
//  JessicaViewController1.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class Dream: UIViewController {

    @IBOutlet weak var adjetive1: UITextField!
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var animal1: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var noun3: UITextField!
    @IBOutlet weak var adjetive2: UITextField!
    
    @IBOutlet weak var labelEnter: UILabel!
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        labelEnter.text = "Last night, I had a " + adjetive1.text! + " dream. There were " + noun1.text! + " flying everywhere! My best friend, " + name1.text! + ", had turned into a talking " + animal1.text! + ". Everywhere we went, there was always someone " + verb1.text! + " behind me. It all felt so real until I looked into the mirror. It wasn’t me at all! Instead, it was " + name2.text! + "! After that, I immediately woke up. “Phew, glad that is over.” Or at least I thought! My mom had turned into a " + noun2.text! + "! I reached to the side of my bed for my trusty " + noun3.text! + " thinking it would save my mom. Just as I was about to use it, my mom woke me up for breakfast. “Are you okay? You look " + adjetive2.text! + ".” I hugged her and replied “Yeah, just peachy.”"
    }
}
