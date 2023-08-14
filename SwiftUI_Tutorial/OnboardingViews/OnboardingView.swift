//
//  OnboardingView.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/30/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var onBoardingState = 0
    @State var buttonText = "Sign Up"
    @State var name: String = ""
    @State var age = 18.0
    @State var gender = ""
    @State var shouldPresentAlert = false
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    
    @AppStorage("name") var userName: String?
    
    
    
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomeScreen
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.gray)
                }
            }
            
            VStack {
                Spacer()
                bottomBottom
            }
            .alert("Name too short", isPresented: $shouldPresentAlert, actions: {
            })
            .padding()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}


// MARK: COMPONENTS
extension OnboardingView {
    private var bottomBottom: some View {
        Text(buttonText)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.white)
            .foregroundColor(.green)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonTapped()
        }
    }
    
    private var welcomeScreen: some View {
        VStack {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .padding()
                .underline()
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
                Text("This is the number one app to find your perfect match online. In the tutorial, we are praticing app storage")
                .foregroundColor(.white)
            
        }
    }
    
    private var addNameSection: some View {
        VStack {
            Spacer()
            Text("What's Your Name?")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            TextField("Name", text: $name)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            
            Spacer()
            Spacer()
        }
    }
    
    private var addAgeSection: some View {
        VStack {
            Spacer()
            Text("How old are you?")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(String(Int(age)))
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            
            Slider(value: $age, in: 18...60, step: 1)
                .padding()
            Spacer()
            Spacer()
        }
    }
    
    private var addGenderSection: some View {
        VStack {
            Spacer()
            Text("Are you male or Female")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(gender)
            Picker("myPicker", selection: $gender) {
                Text("Male").tag("male")
                Text("Female").tag("female")
            }
            .pickerStyle(.inline)
            Spacer()
            Spacer()
        }
    }
}


extension OnboardingView {
    
    func handleNextButtonTapped() {
        withAnimation(.spring(blendDuration: 2)) {
            switch onBoardingState {
            case 3:
                buttonText = "Finish"
            case 1:
                if name.count < 3 {
                    shouldPresentAlert = true
                }
            default:
                buttonText = "Next"
                onBoardingState += 1
            }
            
        }
    }
}
