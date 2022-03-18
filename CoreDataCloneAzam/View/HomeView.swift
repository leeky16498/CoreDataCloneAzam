//
//  HomeView.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var isPresented : Bool = false
    @StateObject var vm = HomeViewModel()
    
    init(vm: HomeViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                MyListView(myLists: vm.myLists)
                
                Divider()
                NavigationLink("Add List") {
                    AddTaskView { newList, colorCode in
                        //save
                        vm.saveNewList(newListName: newList, colorCode: colorCode)
                    }
                }
                .frame(maxWidth : .infinity, alignment: .trailing)
                .padding()
                .sheet(isPresented : $isPresented) {
                    
                }
            }//vst
            
            .navigationTitle("My Lists")
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView(vm: HomeViewModel())
//    }
//}
