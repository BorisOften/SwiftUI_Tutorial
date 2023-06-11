//
//  SheetTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/3/23.
//

import SwiftUI

struct SheetTutorial: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }

//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var isPresented
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                isPresented.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

struct SheetTutorial_Previews: PreviewProvider {
    static var previews: some View {
        SheetTutorial()
    }
}
