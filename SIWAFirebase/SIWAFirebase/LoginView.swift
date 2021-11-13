//
//  LoginView.swift
//  SIWAFirebase
//
//  Created by Muhammad Osama Naeem on 11/12/21.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    @StateObject var loginData = LoginViewModel()
    var body: some View {
        SignInWithAppleButton { request in
            loginData.nonce = randomNonceString()
            request.requestedScopes = [.email, .fullName]
            request.nonce = sha256(loginData.nonce)
        } onCompletion: { (result) in
            switch result {
            case .success(let user):
                print("Login with Firebase")
                guard let credential = user.credential as? ASAuthorizationAppleIDCredential else {
                    print("Error with user credentials")
                    return
                }
                loginData.authenticate(credential: credential)
            case .failure(let error):
                print(error.localizedDescription)
                
            }
        }.frame(height: 55)
        .clipShape(Capsule())
        .padding(.horizontal, 30)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
