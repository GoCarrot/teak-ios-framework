// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Teak",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "Teak",
      targets: ["Teak"]
    ),
    .library(
      name: "TeakExtension",
      targets: ["TeakExtension"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "Teak",
      path: "./Teak.xcframework"
    ),
    .binaryTarget(
      name: "TeakExtension",
      path: "./TeakExtension.xcframework"
    ),
  ]
)
