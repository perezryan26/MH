//
//  ProfileButton.swift
//  MH
//
//  Created by Ryan Perez on 4/14/22.
//

import UIKit

class ProfileButton: UIButton {

    //first loading function
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    //first required loading function
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }

    func defaultSetup() {
        //LOGIN BUTTON
        let colorOrange =  UIColor(red: 251.0/255.0, green: 204.0/255.0, blue: 11.0/255.0, alpha: 1.0).cgColor
        
        layer.backgroundColor = colorOrange
        
        //spacing
        let spacing = 1.5
        let buttonAttributedString = NSMutableAttributedString(string:(titleLabel?.text)!)
        buttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAttributedString.length))
        self.setAttributedTitle(buttonAttributedString, for: .normal)
    }
}
