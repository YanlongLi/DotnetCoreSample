#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

appPkg="$DIR/DotnetCoreSampleApplication"

WebApiManifestlocation="$appPkg/DotnetCoreWebApiPkg"
WebApiManifestlocationLinux="$WebApiManifestlocation/ServiceManifest-Linux.xml"
WebApiManifestlocationWindows="$WebApiManifestlocation/ServiceManifest-Windows.xml"
WebApiManifestlocation="$WebApiManifestlocation/ServiceManifest.xml"
cp $WebApiManifestlocationLinux $WebApiManifestlocation

sfctl application upload --path DotnetCoreSampleApplication --show-progress
sfctl application provision --application-type-build-path DotnetCoreSampleApplication
sfctl application create --app-name fabric:/DotnetCore --app-type DotnetCoreSample --app-version 1.0.0
