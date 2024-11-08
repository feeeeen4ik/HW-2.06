//
//  UserData.swift
//  HW 2.06
//
//  Created by Феликс Антонович on 08.11.2024.
//

struct User {
    let userName: String
    let userPassword: String
    
    static func getUserData() -> User {
        User(userName: "User", userPassword: "Password")
    }
}
