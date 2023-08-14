//
//  EnviromentObjectTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/29/23.
//

import SwiftUI

class EnviromentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init() {
        getArray()
    }
    
    func getArray() {
        self.dataArray.append(contentsOf: [
            "iPhone", "iPad", "Apple Watch"
        ])
    }
}


struct EnviromentObjectTutorial: View {
    
    @StateObject var viewModel = EnviromentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.red.ignoresSafeArea()
                
                NavigationLink {
                    FinalView()
                } label: {
                    Text(selectedItem)
                        .foregroundColor(.orange)
                        .padding()
                        .background(Color.white)
                    
                }
            }
        }
    }
}

struct FinalView: View {
    
    
    @EnvironmentObject var viewmodel: EnviromentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .blue], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 2, y: 6))
                .edgesIgnoringSafeArea(.all)
            
            
                List {
                    ForEach(viewmodel.dataArray, id: \.self) {
                        item in
                        Text(item)
                            .foregroundColor(.orange)
                            .padding()
                            .background(Color.white)
                }
            }
        }
    }
}

struct EnviromentObjectTutorial_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjectTutorial()
    }
}
