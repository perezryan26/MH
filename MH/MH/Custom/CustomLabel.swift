//
//  CustomLabel.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class CustomLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
        
    }
    
    //Sets up the default spacing for label to 1
    func defaultSetup() {
        
        //LABEL SPACING
        let labelSpace = 1
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpace, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
    }
    
    //Sets the spacing of text
    func setSpacing(space: CGFloat) {
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: space, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
    }
}
