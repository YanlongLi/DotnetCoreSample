

## Service Fabric

### Install sfctl
```
sudo apt-get install python3
sudo apt-get install python3-pip
pip3 install sfctl 
```

### [convert a certificate from PFX to PEM format](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cli)
```
openssl pkcs12 -in certificate.pfx -out mycert.pem -nodes
```

### Connect to sf cluster
```
sfctl cluster select --endpoint https://<server>:19080 --pem <path-to-pem-file> --no-verify
```

### Deploy docker-compose file
```
sfctl compose create --deployment-name voting-app --file-path <path-to-docker-compose.yml>
```

## Projects

```
<PublishWithAspNetCoreTargetManifest>false</PublishWithAspNetCoreTargetManifest>
```
[CounterService](https://github.com/Azure-Samples/service-fabric-dotnet-core-getting-started/tree/master/Services/CounterService)


### testing

```
http://<server>:21002/api/values
http://<server>:21002/swagger
```
