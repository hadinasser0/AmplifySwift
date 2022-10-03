//
//  SignInView.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI
import Amplify
import AWSMobileClient

struct SignInView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var email = ""
    @State var password = ""
    @State private var selection: String? = nil
    
    init(){
        signOutLocally()
    }
    
    var body: some View {
        NavigationView{
        VStack(spacing: 15) {
            LogoView()
            NavigationLink(destination: SignUpView(), tag:"SignUp", selection: $selection) {}
            NavigationLink(destination: HomeView(), tag:"Home", selection: $selection) {}
            .navigationTitle("Login")
            Spacer()
            SignInCredentialFields(email: $email, password: $password)
            Button(action: {
                signIn(email: email,password: password)
            }) {
                Text("Log In")
                    .bold()
                    .frame(width: 360, height: 50)
                    .background(.thinMaterial)
                    .cornerRadius(10)
            }
            Spacer()
            HStack {
                Text("Don't have an account?")
                Button(action: {
                    viewRouter.currentPage = .signUpPage
                }) {
                    Text("Sign Up")
                }
            }
                .opacity(0.9)
            Button(action: {
                self.selection = "Home"
            }) {
                Text("SKIP").foregroundColor(.blue)
            }.background(Color.white)
        }
            .padding()
        }.navigationBarTitleDisplayMode(.inline)
    }
    
    func signIn(email: String, password: String){
       
      
        Amplify.Auth.signIn(username: email, password: password) { result in
                switch result {
                case .success:
                    print("Sign in succeeded")

                    self.selection = "Home"
                case .failure(let error):
                    print("Sign in failed \(error)")
                }
            }

    }
    
    func signOutLocally() {
        Amplify.Auth.signOut() { result in
            switch result {
            case .success:
                print("Successfully signed out")
            case .failure(let error):
                print("Sign out failed with error \(error)")
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SignInCredentialFields: View {
    
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        Group {
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
