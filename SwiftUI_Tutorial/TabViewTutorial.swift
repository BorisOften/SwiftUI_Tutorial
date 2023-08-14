//
//  TabViewTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/9/23.
//

import SwiftUI

struct TabViewTutorial: View {
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedInt: $selectedTab)
//                .tabItem {
//                    Image(systemName: "heart")
//                }
//                .tag(0)
//
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                }
//                .tag(1)
//
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person")
//                }
//                .tag(2)
//        }
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }

        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 10, endRadius: 25)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

struct TabViewTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTutorial()
    }
}

struct HomeView: View {
    
    @Binding var selectedInt: Int
    
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                
                Button("Jump to tab 3", action: {
                       selectedInt = 2
                })
                .padding()
                .background(Color.gray)
                .cornerRadius(20)
                .foregroundColor(.white)
            }
            
            
        }
    }
}
