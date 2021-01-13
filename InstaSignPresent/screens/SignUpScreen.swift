//
//  SignUpScreen.swift
//  InstaSignPresent
//
//  Created by Зехниддин on 13/01/21.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var address = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("First name", text: $firstName)
                .modifier(CustomModifierTextField())
            
            TextField("Last name", text: $lastName)
                .modifier(CustomModifierTextField())
            
            TextField("Email", text: $email)
                .modifier(CustomModifierTextField())
            
            TextField("Address", text: $address)
                .modifier(CustomModifierTextField())
            
            SecureField("Password", text: $password)
                .modifier(CustomModifierTextField())
            
            Button(action: {
                
            }) {
                Spacer()
                Text("Sign Up")
                Spacer()
            }
            .modifier(CustomModifierButton())

            Spacer()
            
            HStack(spacing: 6) {
                Text("Already have an account?")
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }) {
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
            }
            .foregroundColor(.blue)
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
