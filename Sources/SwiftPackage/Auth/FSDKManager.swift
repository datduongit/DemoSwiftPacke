//
//  File.swift
//  
//
//  Created by Edric D. on 15/07/2021.
//
import AppAuth
import SPMDeveloperInsider

public class FSDKManager {
    public static func login() {
        print("login")
        let sum = SPMDeveloperInsider.init().Sum(num1: 1, num2: 4)
        print(sum)


        OIDAuthorizationService.discoverConfiguration(forIssuer: URL(string: "")!) { _, _ in

        }
    }
}

