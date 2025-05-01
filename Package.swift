// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS(.v13),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "NotificationBannerSwift",
            targets: ["NotificationBannerSwift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .exact("5.7.1")),
        .package(url: "https://github.com/cbpowell/MarqueeLabel.git", .exact("4.5.0"))
    ],
    targets: [
        .target(
            name: "NotificationBannerSwift",
            dependencies: ["SnapKit", "MarqueeLabel"],
            path: "NotificationBanner/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
