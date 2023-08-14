//
//  DatePickerTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/1/23.
//

import SwiftUI

struct DatePickerTutorial: View {
    
    @State var date: Date = Date()
    
    var body: some View {
        VStack {
            //DatePicker("Select a Date", selection: $date)
                //.tint(.orange)
                //.datePickerStyle(.wheel)
            
            DatePicker("Date", selection: $date, displayedComponents: [.date])
                .datePickerStyle(.wheel)
        }
    }
}

struct DatePickerTutorial_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerTutorial()
    }
}
