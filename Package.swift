// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iPhoneNumberField",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iPhoneNumberField",
            targets: ["iPhoneNumberField"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on. The specific revision is the latest commit on branch `handle-country-code-selection`
        .package(
            url: "https://github.com/Intreecom/PhoneNumberKit-Fix-Presentation",
            revision: "ee59fe3cd310aa96ce3ae365fc281fba1a6f9adf"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "iPhoneNumberField",
            dependencies: [
                .product(name: "PhoneNumberKit", package: "PhoneNumberKit-Fix-Presentation")
            ]
        ),
    ]
)
