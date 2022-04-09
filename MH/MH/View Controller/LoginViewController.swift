//
//  LoginViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class LoginViewController: UIViewController {
    
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
    
    

}
