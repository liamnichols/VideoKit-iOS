// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

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
        //.library(
        //    name: "VideoKitLive",
        //    targets: ["VideoKitLive"]
        //),
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
            url: "https://cdn.video.io/ios/1.0.3/VideoKitCore.xcframework.zip",
            checksum: "151d8072a01ae75e9287ca0a1c315434a46679c8680dc3b522e950a4a2105f06"
        ),
        .binaryTarget(
            name: "VideoKitPlayer",
            url: "https://cdn.video.io/ios//1.0.3/VideoKitPlayer.xcframework.zip",
            checksum: "474e9a80a5735a2abae3a58aa9c2fef28c6f8f4c12947a3e92dd20a8f1a3de29"
        ),
        .binaryTarget(
            name: "VideoKitRecorder",
            url: "https://cdn.video.io/ios/1.0.3/VideoKitRecorder.xcframework.zip",
            checksum: "77ac79245007d62a66d77b382236dc3fcb4f1be02aa384a079c095e0770c2921"
        ),
        //.binaryTarget(
        //    name: "VideoKitLive",
        //    url: "https://cdn.video.io/ios/VideoKit-1.0.3.zip",
        //    checksum: "b793a2c075b1e6a6fc22cfabd64895c25fbd543d1fe8d88380937ffbf57bbaef"
        //)
    ]
)
