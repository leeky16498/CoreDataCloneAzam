//
//  AddTaskView.swift
//  CoreDataCloneAzam
//
//  Created by Kyungyun Lee on 18/03/2022.
//

import SwiftUI

struct AddTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var newListName : String = ""
    @State var selectedColor : Color = .green
    
    var onSave: (String, String) -> Void
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
                .frame(maxWidth : .infinity, alignment: .leading)
                
                Button("Done") {
                    onSave(newListName, selectedColor.hex)
                    presentationMode.wrappedValue.dismiss()
                }
                .frame(maxWidth : .infinity, alignment: .trailing)
            }
            
            VStack {
                
                Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 64))
                    .foregroundColor(selectedColor)
                
                ColorPickerView(selectedColor: $selectedColor)
                
                TextField("List name", text: $newListName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            .frame(height : 200)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            Spacer()
        }
        .padding()
        
    }
}

//struct AddTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTaskView()
//    }
//}
