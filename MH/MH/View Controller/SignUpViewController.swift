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

}
