//
//  ContentView.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       HomeView(vm: HomeViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
