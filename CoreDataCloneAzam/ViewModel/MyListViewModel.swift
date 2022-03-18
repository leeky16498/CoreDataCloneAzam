//
//  MyListViewModel.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import Foundation
import CoreData

struct MyListViewModel : Identifiable {
    
    let myList : MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id : NSManagedObjectID {
        myList.objectID
    }
    
    var name : String {
        myList.name ?? ""
    }
    
    var colorCode : String {
        myList.colorCode ?? ""
    }
    
}
