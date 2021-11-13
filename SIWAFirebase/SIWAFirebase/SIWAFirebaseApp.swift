//
//  SIWAFirebaseApp.swift
//  SIWAFirebase
//
//  Created by Muhammad Osama Naeem on 11/12/21.
//

import SwiftUI
import Firebase

@main
struct SIWAFirebaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appdelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
