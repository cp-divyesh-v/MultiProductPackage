//
//  Resources.swift
//
//
//  Created by Divyesh Vekariya on 08/02/24.
//

import Foundation

public class User {
    public let id: String = UUID().uuidString
    public let name: String
    public let age: Int
    public let email: String
    
    public init(name: String, age: Int, email: String) {
        self.name = name
        self.age = age
        self.email = email
    }
}
