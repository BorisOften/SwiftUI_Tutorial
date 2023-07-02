//
//  ListTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/11/23.
//

import SwiftUI

struct ListTutorial: View {
    
    @State var fruits: [String] = [
        "apples", "oranges", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomatoes", "onions", "carrots", "peach"
    ]
    
    var body: some View {
        
        NavigationStack {
            List {
    //            ForEach(0..<fruits.count) { index in
    //                Text("\(fruits[index])")
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    
    //                .onDelete { indexSet in
    //                    self.delete(indexSet: indexSet)
    //                }
                } header: {
                    Text("Fruits")
                }
                
                Section {
                        ForEach(veggies, id: \.self) { veggie in
                            Text(veggie)
                    } 
                } header: {
                    Text("Veggies")
                }
            }
            .tint(Color.red)
            
            .listStyle(.grouped)
            .navigationTitle("Gocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
        }
        
    }
    
    var addButton: some View {
        
        Button("add") {
            fruits.append("coconunts")
        }
        
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

struct ListTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ListTutorial()
    }
}
