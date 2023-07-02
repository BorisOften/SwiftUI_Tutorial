//
//  TextFieldTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/24/23.
//

import SwiftUI

struct TextFieldTutorial: View {
    @State var text = ""
    @State var textArray = [String]()
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter your name", text: $text)
                    .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                
                Button {
                    saveText()
                } label: {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }
                //.disabled(true)
                
                Spacer()
                
                NavigationLink("Go to next Screen") {
                    TextList(list: textArray)
                }
                
                Spacer()
            }
            .padding()
            
            .navigationTitle("TextField BootCamp")
        }
        
    }
    
    func saveText() {
        textArray.append(text)
        text = ""
    }
}

struct TextList: View {
    var list = [String]()
    
    var body: some View {
        List {
            
            ForEach(list, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct TextFieldTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldTutorial()
    }
}
