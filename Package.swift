// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHelpers",
    defaultLocalization: "en",
    products: [
        .library(name: "SwiftHelpers", targets: ["Core",
                                                "Core-Data",
                                                "Date-Time",
                                                "Misc",
                                                "UI"])
    ],
    targets: [
        .target(name: "Core"),
        .target(name: "Core-Data"),
        .target(name: "Date-Time", dependencies: ["Core"]),
        .target(name: "Misc"),
        .target(name: "UI"),
        .testTarget(
            name: "SwiftHelpersTests",
            dependencies: ["Core",
                           "Core-Data",
                           "Date-Time",
                           "Misc",
                           "UI"]),
    ]
)
