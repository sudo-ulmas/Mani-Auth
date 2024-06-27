// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ManiAuth",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ManiAuth",
            targets: ["ManiAuth", "Flutter", "App", "FlutterPluginRegistrant", "MyId", "PathProvider", "SmartAuth"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ManiAuth"),
        .binaryTarget(name: "App", path: "./Sources/App.xcframework"),
        .binaryTarget(name: "Flutter", path: "./Sources/Flutter.xcframework"),
        .binaryTarget(name: "FlutterPluginRegistrant", path: "./Sources/FlutterPluginRegistrant.xcframework"),
        .binaryTarget(name: "MyId", path: "./Sources/myid.xcframework"),
        .binaryTarget(name: "PathProvider", path: "./Sources/path_provider_foundation.xcframework"),
        .binaryTarget(name: "SmartAuth", path: "./Sources/smart_auth.xcframework"),
        
    ]
)
