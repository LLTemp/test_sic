//
//  HelloLib.swift
//  test_sic
//
//  Created by SergeyBrazhnik on 09.11.2020.
//

import Foundation
import KeychainSwift

public class HelloLib {
    
    static let keychain = KeychainSwift(keyPrefix: "HelloLib")
    
    public class func helloFunc(){
        print("helloFunc called")
    }

    public class func saveString(key: String, value: String) {
        keychain.set(value, forKey: key,withAccess: .accessibleWhenPasscodeSetThisDeviceOnly)
    }

    public class func getString(key: String) -> String? {
        keychain.get(key)
    }
}
