// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotSdk",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DotFaceLite",
            targets: ["DotFaceLite", "SamFace", "DotProtocolBuffers", "DotCore", "DotCamera"]),
        .library(
            name: "DotDocument",
            targets: ["DotDocument", "sam", "DotCore", "DotCamera"]),
        .library(
            name: "DotNfc",
            targets: ["DotNfc", "OpenSSL"]),
        .library(
            name: "DotFaceVerification",
            targets: ["DotFaceVerification", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceEyeGazeLiveness",
            targets: ["DotFaceEyeGazeLiveness", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceExpressionNeutral",
            targets: ["DotFaceExpressionNeutral", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceDetectionFast",
            targets: ["DotFaceDetectionFast", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceBackgroundUniformity",
            targets: ["DotFaceBackgroundUniformity", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFaceDetectionBalanced",
            targets: ["DotFaceDetectionBalanced", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
        .library(
            name: "DotFacePassiveLiveness",
            targets: ["DotFacePassiveLiveness", "DotFaceCore", "iface", "onnxruntime", "DotCore", "DotCamera"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "sam", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/2.3.0/Sam.zip", checksum: "caffd31c108d9c8c0434b0e0d12ec4f8058e0dd750f10c2d85cde3b5e3b2ff01"),
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface//IFace.zip", checksum: "df0df3790752fb74480fc04005c939f579e55a08514889db2c4613c75f1e6cd4"),
        .binaryTarget(name: "onnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.0.3/Onnx.zip", checksum: "8c59acabdab063a8833523bc24c8727643dd5cc95132f9f6a0108e8123138463"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.0.0/DotProtocolBuffers.zip", checksum: "51e95643db5b407247b1173d06177406f3044d93b7a87acd2b554b6c8f026add"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core//DotCore.zip", checksum: "02d0329be035be71e5bbf94acef57df3616052ac3bb0ff35ba3ffa9126cc1f5f"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera//DotCamera.zip", checksum: "a84a9d10faa04aacb428210cedc7b1f6c0cf2cbe3c9b0430b533daf67d59feda"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.0/OpenSSL.zip", checksum: "c241be4a102f8bc493f2e652c3e732663cbd4f6341cf65f6f6fbec720e0140d4"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc//DotNfc.zip", checksum: "f040aecdb9cef782fd3bbc4324c992e3ae6ac328c50871adc0bd2ab54e2e4a34"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document//DotDocument.zip", checksum: "95022babb21d75d3357df190482810adfe495739a31e6925817bb6aa56f8a833"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite//DotFaceLite.zip", checksum: "bc2f8bbfaf14460ac0a10edf94734ff1618d54e6d776d447019a4bd50f323d84"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core//DotFaceCore.zip", checksum: "6031955747183f6d6320ac315586378da19e6cd2f367a9bd816ac503c90deeb1"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification//DotFaceVerification.zip", checksum: "fe845e85623c2bee54792042f8190bc4ebb6c06b389d90c86a14348a98377980"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness//DotFaceEyeGazeLiveness.zip", checksum: "3b853851a303628a8f217c5d228a2a064202b35d2267a708731c0f615ff3d598"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral//DotFaceExpressionNeutral.zip", checksum: "333636d6c48032fa3e303ca8fcf9035347d0ad6eae4ea704e175d99b35016178"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast//DotFaceDetectionFast.zip", checksum: "808235d3cb729369420199d143f5cba8e2c183109c6aac3e6ede3be35c17e399"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity//DotFaceBackgroundUniformity.zip", checksum: "a047168a70286b0ec10ffc883a929b88df462791b20b0d22d739d2016bf03fef"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced//DotFaceDetectionBalanced.zip", checksum: "5fd174b728879c9783e131da6b2c934c7a3e9ae2684caad3b1f911450f8366f1"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness//DotFacePassiveLiveness.zip", checksum: "44b043a5ca0a918228db831ade335e9e40ca51c2c9779037c6a5451920023b11"),
    ]
)
