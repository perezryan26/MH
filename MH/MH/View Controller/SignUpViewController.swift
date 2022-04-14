//
//  SignUpViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var NameTextField: CustomTextField!
    
    @IBOutlet weak var EmailTextField: CustomTextField!
    @IBOutlet weak var PasswordTextField: CustomTextField!
    //First loading function
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func signup(_ sender: Any) {
        let user = PFUser()
        user.username = self.NameTextField.text
        user.password = self.PasswordTextField.text
        user.email = self.EmailTextField.text
        
        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
                if let error = error {
                    self.displayAlert(withTitle: "Error", message: error.localizedDescription)
                } else {
                    self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
                    }
                }
    }
    
    func displayAlert(withTitle title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
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
