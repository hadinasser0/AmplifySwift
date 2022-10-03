//
//  SignInView.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI
import Amplify
import AWSAppSync
import AWSMobileClient
import AlertToast

struct HomeView: View {
    
    @State var fileName = ""
        
    var body: some View {
        NavigationView{
        VStack() {
            HomeFields()
        }
            .padding()
        }.navigationBarTitleDisplayMode(.inline)
         .navigationBarHidden(true)
         
     }
}

struct HomeFields: View {
    
    @State var fileName: String = ""
    var appSyncClient: AWSAppSyncClient?
    let AppSyncRegion: AWSRegionType = AWSRegionType.EUWest1
    let AppSyncEndpointURL: URL = URL(string: "YOUR-GRAPHQL-ENDPOINT")!
 
    @State var subscriptionWatcher: AWSAppSyncSubscriptionWatcher<OnCreateMyModelTypeV2Subscription>?
  
    
    
    init() {
        
        let credentialsProvider = AWSCognitoCredentialsProvider(regionType:.EUWest1,
           identityPoolId:"YOUR-IDENTITY-POOL-ID")
            
          do {
            
              let appSyncConfig = try AWSAppSyncClientConfiguration(url: AppSyncEndpointURL,
                                                                    serviceRegion: AppSyncRegion,
                                                                    credentialsProvider: credentialsProvider)
             
              appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
              
          
              print("Successfully initialized appsync client. \(String(describing: appSyncClient))")
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        
    }
    
    func uploadData(fileName: String) {
        let dataString = "Hello World!"
        let data = dataString.data(using: .utf8)!
        let options = StorageUploadDataRequest.Options(accessLevel: .protected)
        Amplify.Storage.uploadData(key: fileName, data: data, options: options) { progress in
            print("Progress: \(progress)")
        } resultListener: { event in
            switch event {
            case .success(let data):
                print("Completed: \(data)")
            case .failure(let storageError):
                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        }
    }
    
    func listFiles() {
        let options = StorageListRequest.Options(accessLevel: .protected)
        Amplify.Storage.list(options: options) { event in
            switch event {
            case let .success(listResult):
                print("Completed")
                listResult.items.forEach { item in
                    print("Key: \(item.key)")
                }
            case let .failure(storageError):
                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        }
    }
    
    func fetchApi() {
        let request = RESTRequest(path: "/helloworld")
        Amplify.API.get(request: request) { result in
            switch result {
            case .success(let data):
                let str = String(decoding: data, as: UTF8.self)
                print("Success \(str)")
            case .failure(let apiError):
                print("Failed", apiError)
            }
        }
    }
    
    func createModal(){
        let mutationInput = CreateMyModelTypeInput(description: "Use AppSync", title:"Realtime and Offline")

        appSyncClient?.perform(mutation: CreateMyModelTypeMutation(input: mutationInput), resultHandler:  { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        })
    }
    
    
    func listModals(){
        appSyncClient?.fetch(query: ListMyModelTypesQuery())  { (result, error) in
           if error != nil {
               print(error?.localizedDescription ?? "")
               return
           }
           result?.data?.listMyModelTypes?.items!.forEach { print(($0?.title)! + " " + ($0?.description)!) }
       }
    }

    func subscribeModal(){
    
        do {
          subscriptionWatcher = try appSyncClient?.subscribe(subscription: OnCreateMyModelTypeV2Subscription(), resultHandler: { (result, transaction, error) in
            if let result = result {
                print("hello")
                print(result.data!.onCreateMyModelTypeV2!.title)
            } else if let error = error {
              print(error.localizedDescription)
            }
          })
        } catch {
          print("Error starting subscription.")
        }
    }
 
    
    var body: some View {
        VStack {
            Text("S3")
                .padding()
                .textInputAutocapitalization(.never)
                .font(.system(size: 30))
            TextField("File name", text: $fileName)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
            Button(action: {
                uploadData(fileName: fileName)
            }) {
                Text("Upload File").foregroundColor(.white)
            }.background(Color.blue)
                .padding()
                .buttonStyle(.borderedProminent)
            Button(action: {
                listFiles()
            }) {
                Text("List Files").foregroundColor(.white)
            }.background(Color.blue)
             .padding()
             .buttonStyle(.borderedProminent)
           
            Text("API Gateway")
                .padding()
                .textInputAutocapitalization(.never)
                .font(.system(size: 30))
            Button(action: {
                fetchApi()
            }) {
                Text("Call API").foregroundColor(.white)
            }.background(Color.blue)
             .padding()
             .buttonStyle(.borderedProminent)
            
            Text("AppSync")
                .padding()
                .textInputAutocapitalization(.never)
                .font(.system(size: 30))
            Button(action: {
                listModals()
            }) {
                Text("List Modals").foregroundColor(.white)
            }.background(Color.blue)
             .padding()
             .buttonStyle(.borderedProminent)
            Button(action: {
                createModal()
            }) {
                Text("Add Modals").foregroundColor(.white)
            }.background(Color.blue)
             .padding()
             .buttonStyle(.borderedProminent)
            Button(action: {
                subscribeModal()
                
            }) {
                Text("Subscribe to modal").foregroundColor(.white)
            }.background(Color.blue)
             .padding()
             .buttonStyle(.borderedProminent)
        }
    }
    
}
