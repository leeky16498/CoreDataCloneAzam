//
//  HomeViewModel.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import Foundation
import CoreData

class HomeViewModel : NSObject, ObservableObject {
    
    private var fetchedResultController : NSFetchedResultsController<MyList>
    private(set) var context : NSManagedObjectContext
    
    @Published var myLists : [MyListViewModel] = []
    
    let shared = CoreDataManager.shared
    
    override init() {
        self.context = CoreDataManager.shared.context
        fetchedResultController = NSFetchedResultsController(fetchRequest: MyList.all, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        super.init()
        fetchedResultController.delegate = self
        
        do {
            try fetchedResultController.performFetch()
            guard let myLists = fetchedResultController.fetchedObjects else {return}
            self.myLists = myLists.map(MyListViewModel.init)
            
        } catch {
            
        }
    } // 인스턴스가 생성될 때 실행된다.
    
    func saveNewList(newListName : String, colorCode : String) {
        let myList = MyList(context: context)
        myList.name = newListName
        myList.colorCode = colorCode
        
        do {
            try myList.save()
        } catch {
            print(error)
        }
    }
}

extension HomeViewModel : NSFetchedResultsControllerDelegate {
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        guard let myLists = controller.fetchedObjects as? [MyList] else {return}
        self.myLists = myLists.map(MyListViewModel.init)
    }
}
 // 여기는 새로운 자료를 더할때 실행된다.
