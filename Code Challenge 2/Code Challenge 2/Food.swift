//
//  Food.swift
//  Code Challenge 2
//
//  Created by Benjamin Poulsen PRO on 5/16/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import Foundation
import CoreData




extension Food {
    convenience init?(name: String, calories: String, rating: String, date: String, context: NSManagedObjectContext = Stack.context) {
        
        self.init(context: context)
        self.name = name
        self.date = date
        self.rating = rating
        self.calories = calories
      
    }
}
