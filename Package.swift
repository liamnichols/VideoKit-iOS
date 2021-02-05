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
        // .package(name: "zlib", url:"https://github.com/fourplusone/swift-package-zlib", .branch("master")),
    ],
    targets: [
        // swift package compute-checksum VideoKit-1.0.3.zip
        .binaryTarget(
            name: "VideoKitCore",
            url: "https://cdn.video.io/ios/\(version)/VideoKitCore.xcframework.zip",
            checksum: "21948eeabe614858d69306cf549ec4d6ee42dd6fd5de980e4d7c6e55300df70e"
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
            url: "https://cdn.video.io/ios/\(version)/VideoKitPlayer.xcframework.zip",
            checksum: "1f103eaacae434cdcba5236448af40fdbb03a8e25bc25e4b6708351d95f2e63f"
        ),
        .binaryTarget(
            name: "VideoKitRecorder",
            url: "https://cdn.video.io/ios/\(version)/VideoKitRecorder.xcframework.zip",
            checksum: "cd3c76074c89b13e46ba5504c3ec07594618214163b1dbaefbcdeefa7a702764"
        ),
        .binaryTarget(
            name: "VideoKitLive",
            url: "https://cdn.video.io/ios/\(version)/VideoKitLive.xcframework.zip",
            checksum: "dcd7e80c87ce2476e25af7f4f9d62b08926bf6c6afa4a43b55d680ff2cf2a51d"
        ),
        .target(
            name: "VideoKitLiveWrapper",
            dependencies: [
                .target(name: "VideoKitLive"),
            ],
            path: "VideoKitLiveWrapper"
        ),
    ]
)
