//
//  File.swift
//  Code Challenge 2
//
//  Created by Benjamin Poulsen PRO on 5/16/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import Foundation
import CoreData


enum Stack {
    
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
        
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
