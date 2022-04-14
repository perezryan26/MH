//
//  LoginViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //UI View Properties
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //First Load function
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    //Sets up the UI elements
    func setUpProperties() {
        navigationController?.navigationBar.layer.frame.origin.y = 40
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    //Hides the status bar at the top of the screen
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //hit control k if the keyboard isn't popping up
    //allows you to close keyboard from email text field
    @IBAction func Done(_ sender: CustomTextField) {
        sender.resignFirstResponder()
    }
    
    //allows you to close keyboard from password text field
    @IBAction func Done2(_ sender: CustomTextField) {
        sender.resignFirstResponder()
    }
    
}
