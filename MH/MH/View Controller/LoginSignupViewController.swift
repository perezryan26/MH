//
//  LoginSignupViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/26/22.
//

import UIKit

class LoginSignupViewController: UIViewController {
    //UI View Properties
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var DontHaveAccountLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    
    //First loading function
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    //Sets up the UI Elements
    func setUpProperties() {
        
        //CREATE GRADIENT FOR BUTTONS
        
        //LOGIN BUTTON
        let colorOrange =  UIColor(red: 251.0/255.0, green: 204.0/255.0, blue: 11.0/255.0, alpha: 1.0).cgColor
        
        loginButton.layer.backgroundColor = colorOrange
        loginButton.layer.cornerRadius = loginButton.layer.frame.height/2
        
        //spacing
        let spacing = 1.5
        let buttonAttributedString = NSMutableAttributedString(string:(loginButton.titleLabel?.text)!)
        buttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAttributedString.length))
        loginButton.setAttributedTitle(buttonAttributedString, for: .normal)
        
        let signUpSpacing = 1.5
        let signUpSpacingbuttonAttributedString = NSMutableAttributedString(string:(signupButton.titleLabel?.text)!)
        signUpSpacingbuttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: signUpSpacing, range: NSMakeRange(0, buttonAttributedString.length))
        signupButton.setAttributedTitle(signUpSpacingbuttonAttributedString, for: .normal)
        
        //LABEL SPACING
        let labelSpace = 1
        let labelAttributedString = NSMutableAttributedString(string: DontHaveAccountLabel.text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpace, range: NSMakeRange(0, labelAttributedString.length))
        DontHaveAccountLabel.attributedText = labelAttributedString
        
        //;
        //SIGNUP BUTTON
        signupButton.layer.backgroundColor = colorOrange
        signupButton.layer.cornerRadius = signupButton.layer.frame.height/2
    }
    
}
