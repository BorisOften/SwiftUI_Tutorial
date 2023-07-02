//
//  PickerTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/1/23.
//

import SwiftUI

struct PickerTutorial: View {
    
    @State var selection: String = ""
    let filterSelection = [
        "Red", "Blue", "Green"
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            Picker("Picker", selection: $selection) {
                ForEach(18..<100) { number in
                    Text("\(number)").tag("\(number)")
                }

            }
            .pickerStyle(.automatic)
        }
    }
}

struct PickerTutorial_Previews: PreviewProvider {
    static var previews: some View {
        PickerTutorial()
    }
}
