//
//  LoginInspector.swift
//  FileManager
//
//  Created by Ален Авако on 25.05.2022.
//

import UIKit
import KeychainAccess

class LoginInspector {
    
    static let shared = LoginInspector()
    let keychain = Keychain(service: "com.avako.FileManager")
    
    func signUp(password: String, completion: @escaping () -> Void) {
        keychain[password] = password
        completion()
        print("User registered")
        print("\(keychain.allKeys())")
    }
    
    func signIn(password: String, completion: @escaping (Bool) -> Void) {
        if keychain[password] != nil {
            completion(true)
            print("User logged in")
        } else {
            completion(false)
            print("User not logged in")
        }
        print("\(keychain.allKeys())")
    }
    
    func removePassword() {
        try! keychain.removeAll()
        print("\(keychain.allKeys())")
    }
}
