//
//  FoodController.swift
//  Code Challenge 2
//
//  Created by Benjamin Poulsen PRO on 5/16/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import Foundation
import CoreData

class FoodController {
    
    static let sharedController = FoodController()
    
    
    func foodItems() -> [Food] {
        let request: NSFetchRequest<Food> = Food.fetchRequest()
        
        do {
            return try Stack.context.fetch(request)
        } catch {
            return []
        }
    }
    
    
    func saveToPersistentStorage() {
        do {
            try Stack.context.save()
        } catch {
            print("Save to persistent storage failed")
        }
    }
    
    
    func deleteFoodFromStack(foodToDelete: Food) {
        Stack.context.delete(foodToDelete)
        saveToPersistentStorage()
    }
    
    
    func createFoodItem(name: String, calories: String, rating: String) {
        let _ = Food(name: name, calories: calories, rating: rating)
        saveToPersistentStorage()
        
    }
    
    
    
    
    
    
    
}
