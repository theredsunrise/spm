#!/usr/bin/env bash

set -e
set -x

TOKEN="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"
RELEASE_VERSION="888.888.888"

curl -H "Accept: application/vnd.github.everest-preview+json" \
-H "Authorization: token $TOKEN" \
--request POST \
--data '{"event_type": "dot_ios_sdk_spm_release", "client_payload": { "release_version": "'"$RELEASE_VERSION"'"}' \
https://api.github.com/repos/theredsunrise/spm/dispatches
