// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VideoKit",
    platforms: [
        // Add support for all platforms starting from a specific version.
        .macOS(.v10_15),
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
            url: "https://cdn.video.io/ios/VideoKit-1.0.3.zip",
            checksum: "b793a2c075b1e6a6fc22cfabd64895c25fbd543d1fe8d88380937ffbf57bbaef"
        ),
        .binaryTarget(
            name: "VideoKitPlayer",
            url: "https://cdn.video.io/ios/VideoKit-1.0.3.zip",
            checksum: "b793a2c075b1e6a6fc22cfabd64895c25fbd543d1fe8d88380937ffbf57bbaef"
        ),
        .binaryTarget(
            name: "VideoKitRecorder",
            url: "https://cdn.video.io/ios/VideoKit-1.0.3.zip",
            checksum: "b793a2c075b1e6a6fc22cfabd64895c25fbd543d1fe8d88380937ffbf57bbaef"
        ),
        .binaryTarget(
            name: "VideoKitLive",
            url: "https://cdn.video.io/ios/VideoKit-1.0.3.zip",
            checksum: "b793a2c075b1e6a6fc22cfabd64895c25fbd543d1fe8d88380937ffbf57bbaef"
        )
    ]
)
