# CIP Core Portal
Cloud Innovation Platform Portal - Core version for public open source community

[Edit in CIP Dev Workspace](https://codeready-cip-crw-common.apps.c1.ocp.dev.sgcip.com/factory?url=https://github.com/cip-core-mirrors/cip-core-portal/tree/demo-tmp)

# Building the website on Openshift

## Build go hugo s2i image

1. Choose a name 

```
export S2INAME="s2i-hugo-go"
```

2. Build image

```
oc new-build centos7-base~https://github.com/cip-core-mirrors/s2i-hugo-golang --strategy docker --name $S2INAME
```

## Generate the static website with previous image

1. Choose a name

```
export APPBUILDNAME="mywebsite-build"
```

2. Create a binary build 

```
oc new-build --binary --image-stream $S2INAME --name $APPBUILDNAME
```

3. Start the build from local directory

```
oc start-build $APPNAME --from-dir .
```

## Serve content from previous file

1. Choose a name

```
export APPNAME="mywebsite"
```

2. Create a binary build 

```
oc new-build --strategy docker -D $'FROM nginx\nCOPY public/* /opt/app-root/src\nUSER ROOT\nRUN chown -R nginx:nginx /opt/app-root/src\nUSER 1001\nEXPOSE 8080\nCMD nginx -g daemon off;' --source-image '${APPBUILDNAME}:latest' --source-image-path "/opt/app-root/src:public" --name $APPNAME"
```
