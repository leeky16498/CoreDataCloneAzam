//
//  MyListView.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import SwiftUI


struct MyListView: View {
    
    let myLists : [MyListViewModel]
    
    var body: some View {
        List(myLists) { myList in
            MyListCellView(vm: myList)
        }
    }
}

//struct MyListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyListView()
//    }
//}
