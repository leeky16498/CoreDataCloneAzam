//
//  ColorPickerView.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import SwiftUI

struct ColorPickerView: View {
    
    let colors : [Color] = [.red, .green, .blue, .yellow, .purple, .pink]
    @Binding var selectedColor : Color
    
    var body: some View {
        
        HStack {
            
            ForEach(colors, id: \.self) {color in
                Image(systemName: selectedColor == color ? "paperplane" : "circle.fill")
                    .foregroundColor(color)
                    .clipShape(Circle())
                    .onTapGesture {
                        print(color)
                        selectedColor = color
                    }
            } 
        }
    }
}

//struct ColorPickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorPickerView()
//    }
//}
