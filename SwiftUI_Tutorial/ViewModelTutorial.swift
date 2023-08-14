//
//  ViewModelTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/22/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    
    var id = UUID()
    var name: String
    var count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruits = [FruitModel]()
    @Published var isLoading = false
    
    init() {
        getFruit()
    }
    
    func getFruit() {
        let fruit1 = FruitModel(name: "Pear", count: 3)
        let fruit2 = FruitModel(name: "Oranges", count: 45)
        let fruit3 = FruitModel(name: "Pear", count: 34)
        let fruit4 = FruitModel(name: "Plum", count: 6)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.fruits.append(fruit4)
            
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(indexSet: IndexSet) {
        self.fruits.remove(atOffsets: indexSet)
    }
    
}

struct ViewModelTutorial: View {
    
    @StateObject var viewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            
            List {
                if viewModel.isLoading {
                    ProgressView {
                        Text("Loading...")
                    }
                } else {
                    ForEach(viewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.orange)
                                .font(.title)
                            Text(fruit.name)
                                .padding(.horizontal)
                            
                        }
                    }
                    .onDelete(perform: viewModel.deleteFruit(indexSet:))
                }
            }
            
            // Navigation Stack modifiers
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        SecondViewModelScreen(fruitViewModel: viewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                            .tint(.red)
                    }
                }
            }
        }
    }
}


struct SecondViewModelScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button {
                dismiss()
            } label: {
                Text("GO BACK")
                    .font(.title3)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
            }

        }
    }
    
}

struct ViewModelTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelTutorial()
        //SecondViewModelScreen()
    }
}
