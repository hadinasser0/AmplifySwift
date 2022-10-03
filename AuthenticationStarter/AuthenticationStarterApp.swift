//
//  AuthenticationStarterApp.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import AWSAppSync

@main
struct AuthenticationStarterApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    init(){
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter)
        }
    }
    
    private func configureAmplify() {

        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin())
            try Amplify.configure()
            print("Amplify configured successfully")
        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
    }
}
