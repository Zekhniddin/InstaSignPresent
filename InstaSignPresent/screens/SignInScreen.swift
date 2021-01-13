//
//  SignInScreen.swift
//  InstaSignPresent
//
//  Created by Зехниддин on 13/01/21.
//

import SwiftUI

struct SignInScreen: View {
    @State private var userID = ""
    @State private var userPW = ""
    @State private var showSingUp = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("im_man")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 300, height: 140)
                .padding(.bottom, 6)
            
            TextField("User ID", text: $userID)
                .modifier(CustomModifierTextField())
            
            SecureField("User PW", text: $userPW)
                .modifier(CustomModifierTextField())
            
            Button(action: {
                
            }) {
                Spacer()
                Text("Sign In")
                Spacer()
            }
            .modifier(CustomModifierButton())
            
            
            Spacer()
            
            HStack(spacing: 6) {
                Text("Don't have an account?")
                Button(action: {
                    self.showSingUp = true
                }) {
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
            }
            .foregroundColor(.blue)
        }
        .sheet(isPresented: $showSingUp) {
            SignUpScreen()
        }
    }
}

struct CustomModifierTextField: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .frame(height: 18)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(30)
            .padding(.horizontal, 12)
    }
}

struct CustomModifierButton: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .foregroundColor(.white)
            .font(.title2)
            .frame(height: 54)
            .background(Color.red)
            .cornerRadius(30)
            .padding(.horizontal)
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
