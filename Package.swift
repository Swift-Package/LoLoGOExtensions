// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoLoGOExtensions",
    defaultLocalization: "zh",
    platforms: [.iOS(.v13)],
    products: [
        // MARK: - 纯Swift库
        .library(name: "LoLoGOExtensions",targets: ["LoLoGOExtensions"]),
        // MARK: - 纯Objective-C库
        .library(name: "LoLoGOExtensionsOC", targets: ["LoLoGOExtensionsOC"]),
    ],
    dependencies: [
        
    ],
    targets: [
        // MARK: - 纯Swift目标 - 依赖纯Objective-C目标以复用Objective-C代码
        .target(name: "LoLoGOExtensions", dependencies: ["LoLoGOExtensionsOC"],
                exclude: [],
                resources: [
                    
                ],
                swiftSettings: [
                    .define("PACKAGECONFIGURATION_DEBUG", .when(platforms: nil, configuration: .debug)),
                    .define("PACKAGECONFIGURATION_RELEASE", .when(platforms: nil, configuration: .release)),
                    //.unsafeFlags(["-suppress-warnings"]),// 压制编译警告
                ]),
        
        // MARK: - 纯Objective-C目标
        .target(name: "LoLoGOExtensionsOC", dependencies: [], path: "Sources/LoLoGOExtensionsOC",
                exclude: [],
                resources: [],
                publicHeadersPath: "",
                cSettings: []),
                //cSettings: [.unsafeFlags(["-w"])]), // 压制所有编译警告
        
        // MARK: - 纯Swift测试目标用来测试两个库
        .testTarget(name: "LoLoGOExtensionsTests", dependencies: ["LoLoGOExtensions"],
                    exclude: [],
                    resources: [
                        
                   ],
                   swiftSettings: []),
        
        // MARK: - 纯Objective-C测试目标用来测试两个库
        .testTarget(name: "LoLoGOExtensionsOCTests", dependencies: ["LoLoGOExtensions", "LoLoGOExtensionsOC"],
                    exclude: [],
                    resources: [],
                    cSettings: []),
    ]
)
