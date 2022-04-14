//
//  SignUpViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    //First loading function
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    //Pops current View Controller in stack
    @IBAction func backButtonHit(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    //Hides the status bar at the top of the screen
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //allows you to close keyboard from name text field
    @IBAction func NameDone(_ sender: CustomTextField) {
        sender.resignFirstResponder()
    }
    
    //allows you to close keyboard from email text field
    @IBAction func EmailDone(_ sender: CustomTextField) {
        sender.resignFirstResponder()
    }
    
    //allows you to close keyboard from passowrd text field
    @IBAction func PasswordDone(_ sender: CustomTextField) {
        sender.resignFirstResponder()
    }
    
}
