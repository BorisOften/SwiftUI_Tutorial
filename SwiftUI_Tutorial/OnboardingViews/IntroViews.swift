//
//  IntroViews.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/30/23.
//

import SwiftUI

struct IntroViews: View {
    
    @AppStorage("signed_in") var isSignedIn: Bool?
    var body: some View {
        ZStack {
            // Background
            RadialGradient(gradient: Gradient(colors: [.red,.blue]), center: .center, startRadius: 0, endRadius: 1000)
                .edgesIgnoringSafeArea(.all)
            
            if let signIn = isSignedIn, signIn {
                Text("Profile View")
            } else {
                Text("Onboarding View")
            }
        }
    }
}

struct IntroViews_Previews: PreviewProvider {
    static var previews: some View {
        IntroViews()
    }
}
