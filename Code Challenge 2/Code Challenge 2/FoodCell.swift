//
//  FoodTableViewCell.swift
//  Code Challenge 2
//
//  Created by Benjamin Poulsen PRO on 5/16/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import UIKit
import CoreData

class FoodCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var food: Food? {
        didSet {
            guard let food = food else {return}
            
        }
    }
    
    
    func updateUI(food: Food) {
        guard let name = food.name,
            let rating = food.rating,
            let date = food.date,
            let calories = food.calories else {return}
        self.nameLabel.text = name
        self.ratingLabel.text = rating
        self.caloriesLabel.text = calories
        
        
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
