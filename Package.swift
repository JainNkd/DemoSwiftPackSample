// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraryDemo",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLibraryDemo",
            targets: ["MyLibraryDemo","KulfyFramwork"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
                   url: "https://github.com/FleksySDK/FleksySDK-iOS",
                   exact: "4.5.4"
         ),
        .package(
                    url: "https://github.com/FleksySDK/FleksyEngine-iOS",
                    exact: "3.8.9"
                ),
        .package(
                    url: "https://github.com/FleksySDK/iOS-CoreServices",
                    exact: "1.4.0"
                ),
        .package(
                    url: "https://github.com/FleksySDK/iOS-FleksyAppsCore",
                    exact: "0.9.0"
                )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyLibraryDemo",
            dependencies: [
                .product(name: "FleksySDK", package: "FleksySDK-iOS"),
                .product(name: "FleksyEngine", package: "FleksyEngine-iOS"),
                .product(name: "iOSCoreServices", package: "iOS-CoreServices"),
                .product(name: "FleksyAppsCore", package: "iOS-FleksyAppsCore"),
                "KulfyFramwork"]),
        .binaryTarget(
                    name: "KulfyFramwork",
                    path: "./build/KulfyFramwork.xcframework"
                ),
    ]
)
