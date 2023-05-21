//
//  ScrollViewTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/13/23.
//

import SwiftUI

struct ScrollViewTutorial: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<50) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                                ForEach(0..<50) {_ in
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 20)
                                        .padding(30)
                                }
                        }
                    }
                }
            }
        }
        
        
        
//        VStack {
//            Rectangle()
//                .frame(width: 300,height: 400)
//
//            Rectangle()
//                .frame(width: 300,height: 400)
//
//            Rectangle()
//                .frame(width: 300,height: 400)
//        }
        
        
        
//        ScrollView {
//            VStack {
//                ForEach(0..<10) { number in
//                    ZStack {
//                        Rectangle()
//                            .frame(width: 300,height: 400)
//
//                        Text("\(number)")
//                            .foregroundColor(.white)
//
//                    }
                    
                    
//                    Rectangle()
//                        .overlay(content: {
//                            Text("\(number)")
//                                .foregroundColor(.white)
//                        })
//                        .frame(width: 300,height: 400)
    }
}

struct ScrollViewTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTutorial()
    }
}
