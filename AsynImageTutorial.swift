//
//  AsynImageTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 8/5/23.
//

import SwiftUI

struct AsynImageTutorial: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack {
//            AsyncImage(url: url)
//                .frame(width: 200, height: 200)
//            .clipped()
            
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    
            } placeholder: {
                ProgressView()
            }

        }
    }
}

struct AsynImageTutorial_Previews: PreviewProvider {
    static var previews: some View {
        AsynImageTutorial()
    }
}
