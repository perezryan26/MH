//
//  ShadowView.swift
//  MH
//
//  Created by Ryan Perez on 4/8/22.
//

import UIKit

class ShadowView: UIView {

    override func draw(_ rect: CGRect) {
        applyShadow()
    }
    
    func applyShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 8)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 8
        let radii = CGSize(width: 4, height: 4)
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: radii).cgPath
        
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
    

}
