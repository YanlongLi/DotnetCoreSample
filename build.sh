#!/bin/bash
DIR=`dirname $(realpath $0)`

cd $DIR/DotnetCoreWebApi
dotnet restore -s https://api.nuget.org/v3/index.json
dotnet build

dotnet publish -o $DIR/DotnetCoreSampleApplication/DotnetCoreWebApiPkg/Code

cd -
