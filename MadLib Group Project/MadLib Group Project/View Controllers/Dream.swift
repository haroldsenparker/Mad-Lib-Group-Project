//
//  JessicaViewController1.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class Dream: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var adjetive1: UITextField!
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var animal1: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var noun3: UITextField!
    @IBOutlet weak var adjetive2: UITextField!
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeKeyboard()
    }
    
    func observeKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)

        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        scrollView.contentInset = contentInset
    }

    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        guard !adjetive1.text!.isEmpty else {
            print("Please fill in all text fields.")
            return
        }
        performSegue(withIdentifier: "displayStory", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DisplayStoryViewController
        destinationVC.madlib = currentMadLib()
    }
    
    func currentMadLib() -> Madlib? {
        let dream = [story1()!, story2()!]
        return Madlib(backgroundColor: .systemPink, stories: dream)
    }
    
    func story1() -> String? {
        return "Last night, I had a \(adjetive1.text!) dream. There were \(noun1.text!) flying everywhere! My best friend, \(name1.text!), had turned into a talking \(animal1.text!)! Everywhere we went, there was always someone \(verb1.text!) behind me. It all felt so real until I looked into the mirror. It wasn’t me at all! Instead, it was \(name2.text!)! After that, I immediately woke up. 'Phew, glad that is over.' Or at least I thought! My mom had turned into a \(noun2.text!)! I reached to the side of my bed for my trusty \(noun3.text!) thinking it would save my mom. Just as I was about to use it, my mom woke me up for breakfast. 'Are you okay? You look \(adjetive2.text!).' I hugged her and said 'Yeah, just peachy.'"
    }
    
    func story2() -> String? {
        return "\(animal1.text!) live in our walls but do not trouble our kitchen. We are \(adjetive1.text!) but cannot understand why they do not come into our kitchen where we have traps set, as they come into the kitchens of \(name1.text!). Although we are pleased, we are also upset, because the \(noun1.text!) behave as though there were something wrong with our kitchen. What makes this even more puzzling is that our house is much less tidy than the houses of our neighbors. There is more food \(verb1.text!) about in our kitchen, more crumbs on the counters and filthy scraps of \(noun2.text!) kicked against the base of the cabinets. In fact, there is so much loose food in the kitchen I can only think \(name2.text!) themselves are defeated by it. In a \(adjetive2.text!) kitchen, it is a challenge for them to find enough food night after night to survive until spring. They patiently hunt and nibble hour after hour until they are satisfied. In the \(noun3.text!), however, they are faced with something so out of proportion to their experience that they cannot deal with it. They might venture out a few steps, but soon the overwhelming sights and smells drive them back into their holes, uncomfortable and embarrassed at not being able to scavenge as they should."

    }
    
}
