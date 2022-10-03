//
//  SignUpView.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI
import Amplify

struct SignUpView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView{
        VStack(spacing: 15) {
            LogoView()
            NavigationLink(destination: ConfirmCodeView(username: username),tag:"Confirm Code",selection: $selection) {
               
            }
            .navigationTitle("Sign Up")
          
        
            Spacer()
            SignUpCredentialFields(username: $username, email: $email, password: $password)
            Button(action: {
                signUp(username: username,email: email, password: password)
            }) {
                Text("Sign Up")
                    .bold()
                    .frame(width: 360, height: 50)
                    .background(.thinMaterial)
                    .cornerRadius(10)
            }
            Spacer()
            HStack {
                Text("Already have an account?")
                Button(action: {
                    viewRouter.currentPage = .signInPage
                }) {
                    Text("Log In")
                }
            }
                .opacity(0.9)
        }
            .padding()
        }.navigationBarTitleDisplayMode(.inline)
    }
    
    func signUp(username: String, email: String, password: String) {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        print("username \(username)")
        print("email \(email)")
        print("password \(password)")
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                    self.selection = "Confirm Code"
                } else {
                    print("SignUp Complete")
                }
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct LogoView: View {
    var body: some View {
        Image("Logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 150)
            .padding(.top, 70)
    }
}

struct SignUpCredentialFields: View {
    
    @Binding var username: String
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        Group {
            TextField("Username", text: $username)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
            TextField("Email", text: $email)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(10)
                .padding(.bottom, 30)
        }
    }
}

