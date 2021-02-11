// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.5"

let package = Package(
    name: "VideoKit",
    platforms: [
        // Add support for all platforms starting from a specific version.
        //.macOS(.v10_15),
        .iOS(.v11),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VideoKitCore",
            targets: ["VideoKitCoreWrapper"]
        ),
        .library(
            name: "VideoKitPlayer",
            targets: ["VideoKitPlayer"]
        ),
        .library(
            name: "VideoKitRecorder",
            targets: ["VideoKitRecorder"]
        ),
        .library(
            name: "VideoKitLive",
            targets: ["VideoKitLiveWrapper"]
        ),
    ],
    dependencies: [
        .package(name: "HaishinKit", url: "https://github.com/shogo4405/HaishinKit.swift", from: "1.1.2")
    ],
    targets: [
        // swift package compute-checksum VideoKit-1.0.3.zip
        .binaryTarget(
            name: "VideoKitCore",
            url: "https://cdn.video.io/ios/\(version)/VideoKitCore.xcframework.zip?ignoreCache=1",
            checksum: "0a9045107e6a7f33b38c27d980ed795ff0156216a04d0f6d4193bbe9eb881a31"
        ),
        .target(
              name: "VideoKitCoreWrapper",
              dependencies: [
                .target(name: "VideoKitCore"),
              ],
              path: "VideoKitCoreWrapper",
              linkerSettings: [
                .linkedLibrary("z"),
              ]
        ),
        .binaryTarget(
            name: "VideoKitPlayer",
            url: "https://cdn.video.io/ios/\(version)/VideoKitPlayer.xcframework.zip?ignoreCache=1",
            checksum: "bfdd9a42eb4eb161f3d2c9d5ea039b557b641eeafa4e76e909e3bbd60f49a47f"
        ),
        .binaryTarget(
            name: "VideoKitRecorder",
            url: "https://cdn.video.io/ios/\(version)/VideoKitRecorder.xcframework.zip?ignoreCache=1",
            checksum: "9f6f5a96beec54f8f180f02b735199be0e9d415460e751d987aeeaeabfb88cb6"
        ),
        .binaryTarget(
            name: "VideoKitLive",
            url: "https://cdn.video.io/ios/\(version)/VideoKitLive.xcframework.zip?ignoreCache=1",
            checksum: "c79e33cbb8ff5389ad7288989a0c14df6b1db8ff383ad9af1d1ccf3744130e25"
        ),
        .target(
            name: "VideoKitLiveWrapper",
            dependencies: [
                .target(name: "VideoKitLive"),
                "HaishinKit",
            ],
            path: "VideoKitLiveWrapper"
        ),
    ]
)
