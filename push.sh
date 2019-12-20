#!/usr/bin/env bash
set -euo pipefail

for package in $(find -name "*.nupkg" | grep "test" -v); do
  echo "${0##*/}": Pushing $package...
  dotnet nuget push $package --source https://f.feedz.io/carter/carter/nuget/index.json --api-key $1
done
