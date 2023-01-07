# Korifi 

Some install helper scripts to install 'cloudfoundry/korifi' on Docker Desktop following these instructions.

* https://github.com/cloudfoundry/korifi/blob/main/INSTALL.kind.md

## Try out

Watch with `k9s` (brew install k9s)

call:

```
export DOCKER_HUB_SERVER="https://index.docker.io/v1/"
export DOCKER_HUB_USER=sklevenz # your docker hub user
export DOCKER_HUB_PASSWORD=***  # create an api token at docker hub (read, write, delete)
```


1. `./createKorifiCluster.sh`
1. `./deployDependencies.sh`
1. `./deployKorifi.sh`
1. `./undeployKorifi.sh` *)
1. `./deployKorifi.sh`
1. `./loginKorifi.sh`
1. `./deployApp.sh`

*) consider: https://github.com/cloudfoundry/korifi/issues/2045

## DNS rebind protection

Add `apps-127-0-0-1.nip.io` to DNS rebind protection exception list of your router (e.g. Fritzbox).

Test with :

```
nslookup apps-127-0-0-1.nip.io

Server:		192.168.2.1
Address:	192.168.2.1#53

Non-authoritative answer:
Name:	apps-127-0-0-1.nip.io
Address: 127.0.0.1
```
  
