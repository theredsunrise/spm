#!/usr/bin/env bash

set -e
set -x


if [ $# != 1 ]
  then
    printf "Invalid arguments count. Should be 1\n"
    exit 1
fi

while [ $# -gt 0 ]; do
  case "$1" in
    --release_version=*)
      RELEASE_VERSION="${1#*=}"
      ;;
    *)
      printf "Invalid argument $1\n"
      exit 1
  esac
  shift
done

OPENSSL_VERSION=1.1.0

SAM_VERSION=2.3.0
SAM_FACE_VERSION=1.2.0

IFACE_VERSION=5.0.3
ONNX_VERSION=2.0.3

PROTOBUF_VERSION=1.0.0

cp Package_template.swift Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam/$SAM_VERSION/Sam.zip"
CHECKSUM=$(sha256sum Sam.zip | awk '{print $1}')
sed -i "s/{checksum_sam}/$CHECKSUM/g" Package.swift
sed -i "s/{version_sam}/$SAM_VERSION/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/iface/$IFACE_VERSION/IFace.zip"
CHECKSUM=$(sha256sum IFace.zip | awk '{print $1}')
sed -i "s/{checksum_iface}/$CHECKSUM/g" Package.swift
sed -i "s/{version_iface}/$IFACE_VERSION/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/onnx/$ONNX_VERSION/Onnx.zip"
CHECKSUM=$(sha256sum Onnx.zip | awk '{print $1}')
sed -i "s/{checksum_onnx}/$CHECKSUM/g" Package.swift
sed -i "s/{version_onnx}/$ONNX_VERSION/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/$PROTOBUF_VERSION/DotProtocolBuffers.zip"
CHECKSUM=$(sha256sum DotProtocolBuffers.zip | awk '{print $1}')
sed -i "s/{checksum_protobuf}/$CHECKSUM/g" Package.swift
sed -i "s/{version_protobuf}/$PROTOBUF_VERSION/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/$OPENSSL_VERSION/OpenSSL.zip"
CHECKSUM=$(sha256sum OpenSSL.zip | awk '{print $1}')
sed -i "s/{checksum_openssl}/$CHECKSUM/g" Package.swift
sed -i "s/{version_openssl}/$OPENSSL_VERSION/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/sam-face/$SAM_FACE_VERSION/SamFace.zip"
CHECKSUM=$(sha256sum SamFace.zip | awk '{print $1}')
sed -i "s/{checksum_sam_face}/$CHECKSUM/g" Package.swift
sed -i "s/{version_sam_face}/$SAM_FACE_VERSION/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/$RELEASE_VERSION/DotCore.zip"
CHECKSUM=$(sha256sum DotCore.zip | awk '{print $1}')
sed -i "s/{checksum_core}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/$RELEASE_VERSION/DotCamera.zip"
CHECKSUM=$(sha256sum DotCamera.zip | awk '{print $1}')
sed -i "s/{checksum_camera}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/$RELEASE_VERSION/DotNfc.zip"
CHECKSUM=$(sha256sum DotNfc.zip | awk '{print $1}')
sed -i "s/{checksum_nfc}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/$RELEASE_VERSION/DotDocument.zip"
CHECKSUM=$(sha256sum DotDocument.zip | awk '{print $1}')
sed -i "s/{checksum_document}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-lite/$RELEASE_VERSION/DotFaceLite.zip"
CHECKSUM=$(sha256sum DotFaceLite.zip | awk '{print $1}')
sed -i "s/{checksum_face_lite}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-core/$RELEASE_VERSION/DotFaceCore.zip"
CHECKSUM=$(sha256sum DotFaceCore.zip | awk '{print $1}')
sed -i "s/{checksum_face_core}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-verification/$RELEASE_VERSION/DotFaceVerification.zip"
CHECKSUM=$(sha256sum DotFaceVerification.zip | awk '{print $1}')
sed -i "s/{checksum_verification}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-eye-gaze-liveness/$RELEASE_VERSION/DotFaceEyeGazeLiveness.zip"
CHECKSUM=$(sha256sum DotFaceEyeGazeLiveness.zip | awk '{print $1}')
sed -i "s/{checksum_eye_gaze}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-expression-neutral/$RELEASE_VERSION/DotFaceExpressionNeutral.zip"
CHECKSUM=$(sha256sum DotFaceExpressionNeutral.zip | awk '{print $1}')
sed -i "s/{checksum_expression_neutral}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-fast/$RELEASE_VERSION/DotFaceDetectionFast.zip"
CHECKSUM=$(sha256sum DotFaceDetectionFast.zip | awk '{print $1}')
sed -i "s/{checksum_detection_fast}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-background-uniformity/$RELEASE_VERSION/DotFaceBackgroundUniformity.zip"
CHECKSUM=$(sha256sum DotFaceBackgroundUniformity.zip | awk '{print $1}')
sed -i "s/{checksum_background_uniformity}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-detection-balanced/$RELEASE_VERSION/DotFaceDetectionBalanced.zip"
CHECKSUM=$(sha256sum DotFaceDetectionBalanced.zip | awk '{print $1}')
sed -i "s/{checksum_detection_balanced}/$CHECKSUM/g" Package.swift

curl -O "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-face-passive-liveness/{version}/DotFacePassiveLiveness.zip"
CHECKSUM=$(sha256sum DotFacePassiveLiveness.zip | awk '{print $1}')
sed -i "s/{checksum_passive}/$CHECKSUM/g" Package.swift

sed -i "s/{version}/$_RELEASE_VERSION/g" Package.swift

rm -rf *.zip
        




