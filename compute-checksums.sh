#/bin/bash

if [ "$1" = "" ]; then
  echo "Provide the path to the VideoKit XCFramework packages as first parameter."
  echo ""
  exit 1
fi

VK_CORE="`swift package compute-checksum \"$1/VideoKitCore.xcframework.zip\"`"
VK_RECORDER="`swift package compute-checksum \"$1/VideoKitRecorder.xcframework.zip\"`"
VK_PLAYER="`swift package compute-checksum \"$1/VideoKitPlayer.xcframework.zip\"`"
VK_LIVE="`swift package compute-checksum \"$1/VideoKitLive.xcframework.zip\"`"

echo "Core: $VK_CORE"
echo "Recorder: $VK_RECORDER"
echo "Player: $VK_PLAYER"
echo "Live: $VK_LIVE"


# todo: replace checksums in package file
#sed -i -e '0,/checksum: ".*?"/s//checksum: "$VK_CORE"/' Package.swift
#awk 'NR==1,/checksum: "[a-z0-9]+"/{sub(/checksum: \"[a-z0-9]+\"/, "checksum: \"123\"")} 1' Package.swift
