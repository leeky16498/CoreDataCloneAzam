//
//  CoreDataManager.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import Foundation
import CoreData

class CoreDataManager {
    
    private let persistantContainer : NSPersistentContainer
    static let shared = CoreDataManager()
    
    var context : NSManagedObjectContext {
        return persistantContainer.viewContext
    }
    
    private init() {
        persistantContainer = NSPersistentContainer(name: "RemindersModel")
        persistantContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError()
            }
        }
    }
    
    
}
