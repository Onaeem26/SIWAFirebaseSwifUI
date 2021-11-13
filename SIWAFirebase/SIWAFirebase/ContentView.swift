//
//  ContentView.swift
//  SIWAFirebase
//
//  Created by Muhammad Osama Naeem on 11/12/21.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @AppStorage("loginStatus") var isLoggedIn = false
    var body: some View {
        if isLoggedIn {
            HomeView()
        }else {
            LoginView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
