//
//  LoginSignupViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/26/22.
//

import UIKit

class LoginSignupViewController: UIViewController {
    //UI View Properties
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var DontHaveAccountLabel: UILabel!
    @IBOutlet weak var signupButton: CustomButton!
    @IBOutlet weak var mealhelperLabel: CustomLabel!
    
    //First loading function
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    //Sets up the UI Elements
    func setUpProperties() {
        //mealhelperLabel.setSpacing(space: 1.75)
        //let colorOrange =  UIColor(red: 231.0/255.0, green: 122.0/255.0, blue: 4.0/255.0, alpha: 1.0)
        //self.view.backgroundColor = colorOrange
    }
    
    //Hides the status bar at the top of the screen
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
