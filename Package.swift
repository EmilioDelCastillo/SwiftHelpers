// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHelpers",
    defaultLocalization: "en",
    products: [
        .library(name: "SwiftHelpers", targets: ["SwiftHelpers"])
    ],
    targets: [
        .target(name: "SwiftHelpers",
                path: "Sources",
                sources: ["Core", "Core-Data", "Date-Time", "Misc", "UI"]),
        .testTarget(
            name: "SwiftHelpersTests",
            dependencies: ["SwiftHelpers"]),
    ]
)
