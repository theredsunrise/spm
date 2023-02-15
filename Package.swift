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
        .binaryTarget(name: "iface", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/888.888.888/IFace.zip", checksum: "df0df3790752fb74480fc04005c939f579e55a08514889db2c4613c75f1e6cd4"),
        .binaryTarget(name: "onnxruntime", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/2.0.3/Onnx.zip", checksum: "8c59acabdab063a8833523bc24c8727643dd5cc95132f9f6a0108e8123138463"),
        .binaryTarget(name: "DotProtocolBuffers", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.0.0/DotProtocolBuffers.zip", checksum: "51e95643db5b407247b1173d06177406f3044d93b7a87acd2b554b6c8f026add"),
        .binaryTarget(name: "DotCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/888.888.888/DotCore.zip", checksum: "93b72ee061e72c0d369ab59e66685e444958e678f1b87504a446527caf56c19c"),
        .binaryTarget(name: "DotCamera", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/888.888.888/DotCamera.zip", checksum: "ad6ce45789a72cce5e91db03952ca84c39c6ee515bbcb926affcbcb13329828a"),
        .binaryTarget(name: "OpenSSL", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.1.0/OpenSSL.zip", checksum: "c241be4a102f8bc493f2e652c3e732663cbd4f6341cf65f6f6fbec720e0140d4"),
        .binaryTarget(name: "SamFace", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/1.2.0/SamFace.zip", checksum: "a309d640fdf93eca446f92b1b99213395ca32631ee44d090b84453b932a9318f"),
        .binaryTarget(name: "DotNfc", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/888.888.888/DotNfc.zip", checksum: "c0afab97ab84e111f1adb243b3b6c3544fa2ad03d1d714c99d33fa56899feb32"),
        .binaryTarget(name: "DotDocument", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/888.888.888/DotDocument.zip", checksum: "c24f0cb4ec6c9d6610dabc0154f1faecf475f25d159d4f66dd5401c5a8ed0525"),
        .binaryTarget(name: "DotFaceLite", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/888.888.888/DotFaceLite.zip", checksum: "5bdc45a15994b206025a87b596c8a6fb7f603fe61047e478eecafd86ee63d55f"),
        .binaryTarget(name: "DotFaceCore", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/888.888.888/DotFaceCore.zip", checksum: "dde07069c734ed1792b7348d8a6db1af3a185101c4707f8af73c170e93e17d0b"),
        .binaryTarget(name: "DotFaceVerification", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/888.888.888/DotFaceVerification.zip", checksum: "bca40da0e6372938fad7c71ab7dfe8a0483ce87a3c120f21daf6cffeaf24aff4"),
        .binaryTarget(name: "DotFaceEyeGazeLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/888.888.888/DotFaceEyeGazeLiveness.zip", checksum: "e47a47fec46fdb0b140c76b43c8b8a1f9e08c901a059b6db768d15ea6743461a"),
        .binaryTarget(name: "DotFaceExpressionNeutral", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/888.888.888/DotFaceExpressionNeutral.zip", checksum: "448633e974331c511a73ec9b33e504f569a96feed76413ec29ba2129bdb14f69"),
        .binaryTarget(name: "DotFaceDetectionFast", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/888.888.888/DotFaceDetectionFast.zip", checksum: "37944df775827f4751d14a73a444d73ed532f87bb10a53c1671f64393deb02d2"),
        .binaryTarget(name: "DotFaceBackgroundUniformity", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/888.888.888/DotFaceBackgroundUniformity.zip", checksum: "e5ab26b7cd8d4ecb68b0ffbb478a31b30882203dd861cedae3a58ccce2b8e477"),
        .binaryTarget(name: "DotFaceDetectionBalanced", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/888.888.888/DotFaceDetectionBalanced.zip", checksum: "424d1fb8148e7278f2544a77ba4c1eda831c35921e798de6f7a5f578dea784eb"),
        .binaryTarget(name: "DotFacePassiveLiveness", url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/888.888.888/DotFacePassiveLiveness.zip", checksum: "c24469ed5689f7631b9bbfa8f47df38fe182cd0129413a493f3d2e381ba02097"),
    ]
)
