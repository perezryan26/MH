//
//  RecipeCell.swift
//  MH
//
//  Created by Ryan Perez on 4/7/22.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var TypeLabel: UILabel!
    @IBOutlet weak var FoodLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var SkillLabel: UILabel!
    @IBOutlet weak var PeopleLabel: UILabel!
    //@IBOutlet weak var RecipeImageView: UIImageView!
    
    //prepares the reciever for service after it has been loaded from an Interface Builder archive, or nib file
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    //sets the selected state of the cell, optionally animating the transition between states
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
