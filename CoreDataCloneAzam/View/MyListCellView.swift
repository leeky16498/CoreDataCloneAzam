//
//  MyListCellView.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import SwiftUI

struct MyListCellView: View {
    
    let vm : MyListViewModel
    
    
    var body: some View {
        HStack {
            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                .foregroundColor(Color.colorFromHex(vm.colorCode))
            Text(vm.name)
        }
    }
}

//struct MyListCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyListCellView()
//    }
//}
