//
//  GoosebumpsViewController.swift
//  MadLib Group Project
//
//  Created by Parker Haroldsen on 5/3/22.
//

import UIKit

class GoosebumpsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var name1: UITextField!
    @IBOutlet var name2: UITextField!
    @IBOutlet var place: UITextField!
    @IBOutlet var noun1: UITextField!
    @IBOutlet var adj1: UITextField!
    @IBOutlet var adj2: UITextField!
    @IBOutlet var adj3: UITextField!
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

        @IBAction func btnEnter(_ sender: Any) {
            guard !name1.text!.isEmpty else {
                print("This be empty.")
                return
            }
            performSegue(withIdentifier: "displayStory", sender: nil)
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DisplayStoryViewController
        destinationVC.madlib = currentMadLib()
    }
    
    func currentMadLib() -> Madlib? {
        let stories = [story1()!, story2()!, story3()!]
        return Madlib(backgroundColor: .green, stories: stories)
    }
    
    func story1() -> String? {
        return "\(name1.text!) and \(name2.text!) think the old \(place.text!) they have just moved into is weird. Spooky. Possibly \(adj1.text!). And the town of Dark Falls is pretty \(adj2.text!), too. But their parents don't believe them. You'll get used to it, they say. Go out and make some \(adj3.text!) friends. So, \(name1.text!) and  \(name2.text!) do. But these new friends are not exactly what their parents had in mind. Because they want to be friends......forever."
    }
    
    func story2() -> String? {
        return "\(name1.text!) thinks there is something wrong with the old camera he and his friends found. The photographs keep turning out wrong. Very wrong. Like the snapshot \(name1.text!) took of his father's new \(noun1.text!) that shows it \(adj1.text!). And then \(name1.text!)’s father is in a nasty wreck. But \(name1.text!)'s friends don't believe him. \(name2.text!) even makes \(name1.text!) bring the camera to her birthday party and take her picture. Only \(name2.text!)’s not in the photograph when it develops. Is \(name2.text!)  about to be taken out of the picture permanently? Who is going to take the next fall for...the evil camera?"
    }
    
    func story3() -> String? {
        return "When \(name1.text!) finds a dusty old piano in the \(place.text!) of his new house, his parents offer to pay for lessons. At first, taking piano seems like a cool idea. But there's something creepy about \(name1.text!)'s piano teacher, Dr. \(name2.text!). Something creepy. Something \(name1.text!) can't quite put his finger on. Then, \(name1.text!) hears the stories. \(adj1.text!) stories. About the students at Dr. \(name2.text!)'s music school. Students who went in for a lesson... and never came out."
    }
}
