//
//  ForEachTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/13/23.
//

import SwiftUI

struct ForEachTutorial: View {
    
    let data = ["one", "another", "you", "there"]
    
    
    var body: some View {
    
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index])")
            }
        }
    }
}

struct ForEachTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ForEachTutorial()
    }
}
