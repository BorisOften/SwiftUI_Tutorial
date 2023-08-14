//
//  AppStorageTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/29/23.
//

import SwiftUI

struct AppStorageTutorial: View {
    
    @AppStorage("name") var userName: String?
    
    var body: some View {
        VStack {
            
            Text(userName ?? "Add a Name")
            
            Button("Save") {
                userName = "Banye"
            }
            .padding()
        }
    }
}

struct AppStorageTutorial_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageTutorial()
    }
}
