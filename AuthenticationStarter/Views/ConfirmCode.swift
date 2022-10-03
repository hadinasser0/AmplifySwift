//
//  SignInView.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI
import Amplify

struct ConfirmCodeView: View {
        
    @State var code = ""
    var username: String
    
    var body: some View {
        VStack(spacing: 15) {
            LogoView()
            Spacer()
            ConfirmCodeFields(code: $code)
            Button(action: {
                confirmSignUp(username: username, confirmationCode: code)
            }) {
                Text("Confirm")
                    .bold()
                    .frame(width: 360, height: 50)
                    .background(.thinMaterial)
                    .cornerRadius(10)
            }
            Spacer()
        }
            .padding()
    }
    
    func confirmSignUp(username: String,confirmationCode: String) {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                print("Confirm signUp succeeded")
            case .failure(let error):
                print("An error occurred while confirming sign up \(error)")
            }
        }
    }
}



struct ConfirmCodeFields: View {
    
    @Binding var code: String
    
    var body: some View {
        Group {
            TextField("Confirmation code", text: $code)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
        }
    }
}
