//
//  MyList + Extension.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import Foundation
import CoreData

extension MyList {
    
    static var all: NSFetchRequest<MyList> {
        let request = MyList.fetchRequest()
        request.sortDescriptors = []
        return request
    }
    
    func save() throws {
        try CoreDataManager.shared.context.save()
    }
}
