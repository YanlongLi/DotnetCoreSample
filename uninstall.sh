#!/bin/bash -x

sfctl application delete --application-id DotnetCoreSampleApplication
sfctl application unprovision --application-type-name DotnetCoreSampleApplicationType --application-type-version 1.0.0
sfctl store delete --content-path DotnetCoreSampleApplication
