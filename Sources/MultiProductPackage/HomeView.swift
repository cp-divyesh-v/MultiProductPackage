// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Data
import Alamofire

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel = .init()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.user.name)
            Text(viewModel.user.email)
            Text("\(viewModel.user.age)")
        }
    }
}

#Preview {
    HomeView()
}

