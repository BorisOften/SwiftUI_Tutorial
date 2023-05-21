//
//  GridTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/20/23.
//

import SwiftUI

struct GridTutorial: View {
    let gridColumns = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView {
        
            LazyVGrid(columns: gridColumns, alignment: .center, spacing: nil, pinnedViews: []) {
                Section {
                    ForEach(0..<30) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                }
                Section {
                    ForEach(0..<30) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                }
            }
        
//            LazyVGrid(columns: gridColumns) {
//                ForEach(0..<50) { index in
//                    RoundedRectangle(cornerRadius: 20)
//                        .frame(height: 100)
//                        .overlay {
//                            Text("\(index)")
//                                .foregroundColor(.white)
//                        }
//
//                }
 //           }
        }
        .padding()
    }
}

struct GridTutorial_Previews: PreviewProvider {
    static var previews: some View {
        GridTutorial()
    }
}
