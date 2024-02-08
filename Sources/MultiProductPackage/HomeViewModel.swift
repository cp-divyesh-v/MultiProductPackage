// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Data
import Alamofire

class HomeViewModel: ObservableObject {
    
    @Published var user: User
    
    init(user: User? = nil) {
        if let user = user {
            self.user = user
        } else {
            self.user = User(name: "Jems", age: 25, email: "jemsbond@gmail.com")
            
        }
    }
}
