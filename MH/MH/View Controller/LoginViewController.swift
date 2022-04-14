//
//  LoginViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //UI View Properties
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    
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
    
    
    @IBAction func login(_ sender: Any) {
        PFUser.logInWithUsername(inBackground: self.emailTextField.text!, password: self.passwordTextField.text!) {
                  (user: PFUser?, error: Error?) -> Void in
                  if user != nil {
                    self.performSegue(withIdentifier: "login_success", sender: nil)
                    self.displayAlert(withTitle: "Login Successful", message: "")
                    
                  } else {
                    self.displayAlert(withTitle: "Error", message: error!.localizedDescription)
                  }
        }
    }
    
    func displayAlert(withTitle title: String, message: String) {
           let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
           let okAction = UIAlertAction(title: "Ok", style: .default)
           alert.addAction(okAction)
           self.present(alert, animated: true)
       }
}
