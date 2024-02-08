// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MultiProductPackage",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MultiProductPackage",
            targets: [
                "MultiProductPackage"
            ]),
        .library(
            name: "Data",
            targets: [
                "Data"
            ])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1")),
        .package(url: "https://github.com/realm/SwiftLint.git", .upToNextMajor(from: "0.54.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MultiProductPackage",
            dependencies: [
                "Alamofire",
                "Data"
            ],
            plugins: [.plugin(name: "SwiftLintPlugin", package: "SwiftLint")]
        ),
        
        .target(
            name: "Data",
            plugins: [.plugin(name: "SwiftLintPlugin", package: "SwiftLint")]
        ),
        
        // Test tragets comes here
        .testTarget(
            name: "MultiProductPackageTests",
            dependencies: [
                "MultiProductPackage",
                "Data"
            ]),
    ]
)
