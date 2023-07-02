//
//  ToggleTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/24/23.
//

import SwiftUI

struct ToggleTutorial: View {
    @State var isOn = false
    
    var body: some View {
        VStack {
            
            Toggle("Toggle is not on", isOn: $isOn)
        }
    }
}

struct ToggleTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ToggleTutorial()
    }
}
