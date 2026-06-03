// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CollectionViewTools",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "CollectionViewTools", targets: ["CollectionViewTools"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onmyway133/DeepDiff", from: "2.3.3"),
    ],
    targets: [
        .target(
            name: "CollectionViewTools",
            dependencies: ["DeepDiff"],
            path: "Sources",
            exclude: ["Info.plist", "CollectionViewTools.h"]
        ),
    ]
)
