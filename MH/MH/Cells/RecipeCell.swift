//
//  RecipeCell.swift
//  MH
//
//  Created by Ryan Perez on 4/7/22.
//

import UIKit

class RecipeCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
