// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftPackage",
            targets: ["SwiftPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/developerinsider/SPMDeveloperInsider", from: "1.0.4"),
         .package(url: "https://github.com/openid/AppAuth-iOS.git", .upToNextMajor(from: "1.3.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftPackage",
            dependencies: ["SPMDeveloperInsider", "AppAuth-iOS"]),
        .testTarget(
            name: "SwiftPackageTests",
            dependencies: ["SwiftPackage"]),
    ]
)
