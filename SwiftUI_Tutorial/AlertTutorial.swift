//
//  AlertTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/17/23.
//

import SwiftUI

struct AlertTutorial: View {
    
    @State var isPresented = false
    @State var alertTitle = ""
    @State var alertMessage = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Click here") {
                isPresented.toggle()
            }
            
            Button("Button 1") {
                alertTitle = "Button 1 was Tapped"
                alertMessage = "Yes button i was tapped"
                isPresented.toggle()
            }
            
            Button("Button 2") {
                    alertTitle = "Button 2 was Tapped"
                    alertMessage = "Yes button 2 was tapped"
                isPresented.toggle()
            }
        }
        
        .alert(isPresented: $isPresented) {
            self.showAlert()
            
            
            //Alert(title: Text("This is a Title"), primaryButton: .default(Text("This is a default button")), secondaryButton: .destructive(Text("Delete")))
            
            
           // Alert(title: Text("Error"), message: Text("There was an error"), dismissButton: .cancel())
        }
    }
    
    func showAlert() -> Alert {
        Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
    }
}

struct AlertTutorial_Previews: PreviewProvider {
    static var previews: some View {
        AlertTutorial()
    }
}
