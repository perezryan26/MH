//
//  FeatureCell.swift
//  MH
//
//  Created by Ryan Perez on 4/9/22.
//

import UIKit

class FeatureCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //prepares the reciever for service after it has been loaded from an Interface Builder archive, or nib file
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    //sets the selected state of the cell, optionally animating the transition between states
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
