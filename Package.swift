// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.4"

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
            targets: ["VideoKitCore"]
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
            targets: ["VideoKitLive"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url:"https://github.com/fourplusone/swift-package-zlib", .branch("master")),
    ],
    targets: [
        // swift package compute-checksum VideoKit-1.0.3.zip
        .binaryTarget(
            name: "VideoKitCore",
            url: "https://cdn.video.io/ios/\(version)/VideoKitCore.xcframework.zip",
            checksum: "7cf9476c8edd84cb9558a931b4e9bf87a0148ca32499f1449012285a38ca8196"
        ),
        .binaryTarget(
            name: "VideoKitPlayer",
            url: "https://cdn.video.io/ios/\(version)/VideoKitPlayer.xcframework.zip",
            checksum: "42c7a09875c709b201e768e46b7ddf84903e407dbac30493fb45101a8e369c00"
        ),
        .binaryTarget(
            name: "VideoKitRecorder",
            url: "https://cdn.video.io/ios/\(version)/VideoKitRecorder.xcframework.zip",
            checksum: "3c2aadeadef2935507ac4e6094912ec37dd7b86e49f4d11f7ae21715d158455d"
        ),
        .binaryTarget(
            name: "VideoKitLive",
            url: "https://cdn.video.io/ios/\(version)/VideoKitLive.xcframework.zip",
            checksum: "669b80ff0b872d27e2db3b3bb50abcd1bf7f81d05a69d8cd4bff485721ce5e52"
        )
    ]
)
