#!/bin/bash -x

sfctl application delete --application-id DotnetCoreApplication
sfctl application unprovision --application-type-name DotnetCoreApplicationType --application-type-version 1.0.0
sfctl store delete --content-path DotnetCoreSampleApplication
