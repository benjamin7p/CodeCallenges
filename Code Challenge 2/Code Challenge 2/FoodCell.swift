//
//  FoodCell.swift
//  Code Challenge 2
//
//  Created by Benjamin Poulsen PRO on 5/17/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import UIKit
import CoreData

class FoodCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var food: Food? {
        didSet {
            guard let food = food else {return}
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(food: Food) {
        guard let name = food.name,
            let date = food.date,
            let rating = food.rating,
            let calories = food.calories else {return}
        nameLabel.text = name
        ratingLabel.text = ("\(rating) out of 5 stars")
        caloriesLabel.text = ("Calories  \(calories)")
        dateLabel.text = ("Date  \(date)")
    }

}
