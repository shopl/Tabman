// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Tabman",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Tabman",
            targets: ["Tabman"])
    ],
    dependencies: [
        .package(url: "https://github.com/shopl/Pageboy", branch: "main")
    ],
    targets: [
        .target(
            name: "Tabman",
            dependencies: ["Pageboy"],
            path: "Sources/Tabman",
            exclude: ["Tabman.h", "Info.plist"],
            resources: [.copy("PrivacyInfo.xcprivacy")],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        ),
        .testTarget(
            name: "TabmanTests",
            dependencies: ["Tabman"],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
