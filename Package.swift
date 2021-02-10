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
            checksum: "ff57b8eeefa6ae089baa8b169264f530bbc9ca99a495d17443a57a50b30ebb5c"
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
            checksum: "2fff2622e000d167f294608d575fecbfb812cd9ec9d23024c37e4b285e1df97d"
        ),
        .binaryTarget(
            name: "VideoKitRecorder",
            url: "https://cdn.video.io/ios/\(version)/VideoKitRecorder.xcframework.zip?ignoreCache=1",
            checksum: "178252275145928a1d78312882beab9d0963adadaba9fb7207bf65a04c3b0b91"
        ),
        .binaryTarget(
            name: "VideoKitLive",
            url: "https://cdn.video.io/ios/\(version)/VideoKitLive.xcframework.zip?ignoreCache=1",
            checksum: "e1aa6e96892e86b0bef4a60dc8a6d2b8918c781a47f70cbb768acb55736d6959"
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
