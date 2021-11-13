//
//  HomeView.swift
//  SIWAFirebase
//
//  Created by Muhammad Osama Naeem on 11/12/21.
//

import SwiftUI
import Firebase

struct HomeView: View {
    @AppStorage("loginStatus") var isLoggedIn = true
    var body: some View {
        
        VStack {
            Text("Hello, \(Auth.auth().currentUser?.email ?? "")")
            Button {
                DispatchQueue.global(qos: .background).async {
                    try? Auth.auth().signOut()
                }
                
                withAnimation {
                    isLoggedIn = false
                }
            } label: {
                Text("Log Out")
            }

        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
