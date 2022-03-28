//
//  CustomTextField.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class CustomTextField: UITextField {

    //First loading function
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetUp()
    }
    
    //First required
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetUp()
    }

    //Sets up the textfield to custom attributes
    func defaultSetUp() {
        let borderColor = UIColor(rgb: 0xE0E0E0)
        let textColor = UIColor(rgb: 0x9E9E9E)
        
        layer.borderWidth = 1
        layer.borderColor = borderColor.cgColor
        
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor : textColor])
        
        layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
    }
}
