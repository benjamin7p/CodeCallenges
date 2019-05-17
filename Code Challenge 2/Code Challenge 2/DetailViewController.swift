//
//  DetailViewController.swift
//  Code Challenge 2
//
//  Created by Benjamin Poulsen PRO on 5/16/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

// The Challenge: Create a single view application. The first view should have a tableview. Have another view so that a user can log food that they have eaten that day. The food that they log should include but is not limited to the name of the food, calories, the day consumed, and a rating on how good the food was. The tableview should display all of the food that the user has entered. The app should persist data.

//Black Diamond: Make the food in the tableview organized by day that is was consumed. Save the data in the cloud.

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var dateLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var caloriesLabel: UITextField!
    @IBOutlet weak var ratingLabel: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    var food: Food? {
        didSet {
            guard let food = food else {return}
            nameLabel.text = food.name
            caloriesLabel.text = food.calories
            ratingLabel.text = food.rating
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameLabel.text,
            let calories = caloriesLabel.text,
            let rating = ratingLabel.text else {return}
        
        if let food = food {
            food.name = name
            food.calories = calories
            food.rating = rating
            FoodController.sharedController.saveToPersistentStorage()
        } else {
            FoodController.sharedController.createFoodItem(name: name, calories: calories, rating: rating)
        }
        
       self.navigationController?.popViewController(animated: true)
    }
    
    
 
    

    
}
