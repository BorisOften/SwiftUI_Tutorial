//
//  ExtractSubview.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/27/23.
//

import SwiftUI

struct ExtractSubview: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            hStack
        }
    }
    
    var hStack: some View {
        HStack {
            MyItem(title: "Plump", number: 12, background: .purple)
            
            MyItem(title: "Oranges", number: 23, background: .pink)
            
            MyItem(title: "Banana", number: 90, background: .yellow)
        }
    }
}

struct ExtractSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubview()
    }
}

struct MyItem: View {
    let title: String
    let number: Int
    let background: Color
    
    init(title: String, number: Int, background: Color) {
        self.title = title
        self.number = number
        self.background = background
    }
    
    var body: some View {
        VStack {
            Text("\(number)")
            Text(title)
        }
        .padding()
        .background(background)
    }
}
