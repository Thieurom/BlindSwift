// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlindSwift",
    products: [
        .library(
            name: "BlindSwift",
            targets: ["BlindSwift"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BlindSwift",
            dependencies: []),
        .testTarget(
            name: "BlindSwiftTests",
            dependencies: ["BlindSwift"]),
    ]
)
