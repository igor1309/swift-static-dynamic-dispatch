// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-static-dynamic-dispatch",
    dependencies: [
        .package(
            url: "https://github.com/google/swift-benchmark",
            from: "0.1.2")
        ,
    ],
    targets: [
        .executableTarget(
            name: "swift-static-dynamic-dispatch",
            dependencies: [
                .product(name: "Benchmark", package: "swift-benchmark"),
            ]
        ),
    ]
)
