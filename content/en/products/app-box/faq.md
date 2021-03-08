---
title: "FAQ - Core"
linktitle: "FAQ - Core"
description: "Find anwsers to ***technical questions*** related to the technologies used in the **CIP *App Box***."
godocref: ""
publishdate: ""
lastmod: ""
categories: []
tags: []
weight: 40
menu:
  docs: 
    identifier: "prb-ab-howto"
    parent: "prd-ab"
    weight: 40
slug: ""
aliases: []
toc: true
---

This page is still in progress. 
Some content may be outdated but information could still be helpful... come back soon, it will change often!



## Kubernetes / OpenShift Container Platform


## Monitoring

### Included in the product

To be documented



### User-defined projects monitoring

If needed, you can create your own metrics, consult the 
[product's documentation](https://docs.openshift.com/container-platform/4.6/monitoring/enabling-monitoring-for-user-defined-projects.html)
for more information.



## Managing Images

#### Importing images in your project

This example shows how to import NodeJS 10 image from [Red Hat's Docker Registry](https://access.redhat.com/containers/).

The following command will create a new image stream named *"nodejs-10"* into
your current project and create a tag latest associated with the 
*"rhoar-nodejs/nodejs-10:latest"* image pulled from the remote registry 
*"registry.access.redhat.com"*.

```bash
$ oc import-image nodejs-10:latest \
     --from=registry.access.redhat.com/rhoar-nodejs/nodejs-10:latest \
     --confirm
```

You'll get the following result.

```bash
$ oc import-image nodejs-10:latest --from=registry.access.redhat.com/rhoar-nodejs/nodejs-10:latest --confirm
     The import completed successfully.

     Name:                   nodejs-10
     Namespace:              testocp1
     Created:                2 seconds ago
     Labels:                 <none>
     Annotations:            openshift.io/image.dockerRepositoryCheck=2018-07-25T11:53:26Z
     Labels:                 <none>                                                                                                                                 [40/1934]Annotations:            openshift.io/image.dockerRepositoryCheck=2018-07-25T11:53:26Z
     Docker Pull Spec:       docker-registry.default.svc:5000/testocp1/nodejs-10
     Image Lookup:           local=false
     Unique Images:          1
     Tags:                   1

     latest
       tagged from registry.access.redhat.com/rhoar-nodejs/nodejs-10:latest

       * registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66
           2 seconds ago

     Image Name:     nodejs-10:latest
     Docker Image:   registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66
     Name:           sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66
     Created:        2 seconds ago
     Annotations:    image.openshift.io/dockerLayersOrder=ascending
     Image Size:     204.6MB (first layer 74.93MB, last binary layer 38.31MB)
     Image Created:  12 days ago
     Author:         <none>
     Arch:           amd64
     Entrypoint:     container-entrypoint
     Command:        /bin/sh -c ${STI_SCRIPTS_PATH}/usage
     Working Dir:    /opt/app-root/src
     User:           1001
     Exposes Ports:  8080/tcp
     Docker Labels:  architecture=x86_64
                     authoritative-source-url=registry.access.redhat.com
                     build-date=2018-07-12T22:40:07.794626
                     com.redhat.build-host=osbs-cpt-002.ocp.osbs.upshift.eng.rdu2.redhat.com
                     com.redhat.component=rhoar-nodejs-container
                     com.redhat.deployments-dir=/opt/app-root/src
                     com.redhat.dev-mode=DEV_MODE:false
                     com.redhat.dev-mode.port=DEBUG_PORT:5858
                     description=Node.js 10.6.0 available as a container is a base platform for building and running various Node.js 10.6.0 applications and frameworks. Node
     .js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O model tha
     t makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.
                     distribution-scope=public
                     io.k8s.description=Node.js 10.6.0 available as a container is a base platform for building and running various Node.js 10.6.0 applications and framework
     s. Node.js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O mo
     del that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.
     s. Node.js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blockin[0/1934]del that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.
                     io.k8s.display-name=Node.js 10.6.0
                     io.openshift.expose-services=8080:http
                     io.openshift.s2i.scripts-url=image:///usr/libexec/s2i
                     io.openshift.tags=builder,nodejs,nodejs-10.6.0
                     io.s2i.scripts-url=image:///usr/libexec/s2i
                     maintainer=Lance Ball <lball@redhat.com>
                     name=rhoar-nodejs/nodejs-10
                     release=2
                     summary=Platform for building and running Node.js 10.6.0 applications
                     url=https://access.redhat.com/containers/#/registry.access.redhat.com/rhoar-nodejs/nodejs-10/images/10.6.0-2
                     usage=This image is very generic and does not serve a single use case. Use it as a base to build your own images.
                     vcs-ref=cc23fc00a14687f13dba75e46426ae3db4a2a688
                     vcs-type=git
                     vendor=Red Hat, Inc.
                     version=10.6.0
     Environment:    PATH=/opt/app-root/src/node_modules/.bin/:/opt/app-root/src/.npm-global/bin/:/opt/app-root/src/bin:/opt/app-root/bin:/usr/local/sbin:/usr/local/bin:/usr
     /sbin:/usr/bin:/sbin:/bin
                     container=oci
                     SUMMARY=Platform for building and running Node.js 10.6.0 applications
                     DESCRIPTION=Node.js 10.6.0 available as a container is a base platform for building and running various Node.js 10.6.0 applications and frameworks. Node
     .js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O model tha
     t makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.
                     STI_SCRIPTS_URL=image:///usr/libexec/s2i
                     STI_SCRIPTS_PATH=/usr/libexec/s2i
                     APP_ROOT=/opt/app-root
                     HOME=/opt/app-root/src
                     BASH_ENV=/opt/app-root/etc/scl_enable
                     ENV=/opt/app-root/etc/scl_enable
                     PROMPT_COMMAND=. /opt/app-root/etc/scl_enable
                     NODEJS_SCL=rh-nodejs8
                     NODE_VERSION=10.6.0
                     NPM_VERSION=6.1.0
                     NPM_RUN=start
                     NODE_LTS=false
                     NPM_CONFIG_LOGLEVEL=info
                     NPM_CONFIG_PREFIX=/opt/app-root/src/.npm-global
                     NPM_CONFIG_TARBALL=/usr/share/node/node-v10.6.0-headers.tar.gz
                     DEBUG_PORT=5858

```

You can add the *"--scheduled=true"* flag to indicate OpenShift that you'd like
to have this image automatically refreshed whenever a new image is available on
the remote registry. The refresh period is globally configured on the OpenShift
cluster using the *"ScheduledImageImportMinimumIntervalSeconds"* directive and
defaults to 15 minutes.

```bash
$ oc import-image nodejs-10:latest \
     --from=registry.access.redhat.com/rhoar-nodejs/nodejs-10:latest \
     --confirm --scheduled=true
```

It is also possible to import all tags associated to the image by removing the
":latest" tag from the source and destination parameters and adding the
*"--all=true"* flag as below.

```bash
$ oc import-image nodejs-10 \
     --from=registry.access.redhat.com/rhoar-nodejs/nodejs-10 \
     --confirm --all=true
```

To list the available tags for a specific image, use the following command:

```bash
$ oc get istag
```

Here is the result at time of writing.

```bash
NAME                        DOCKER REF                                                                                                                             UPDATED              IMAGENAME
nodejs-10:10.5.0            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:94217dc19978d075dd48ad57b8e635d2a481051adb5ac12961f2f1b9b17194e8              About a minute ago   sha256:94217dc19978d075dd48ad57b8e635d2a481051adb5ac12961f2f1b9b17194e8
nodejs-10:10.6.0            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66              About a minute ago   sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66
nodejs-10:10.6.0-2          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66              About a minute ago   sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66
nodejs-10:10.1.0-2          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:f638104b897d63e7d5fd721162b469df95430a04d656e90e5202f3ad9314421b              About a minute ago   sha256:f638104b897d63e7d5fd721162b469df95430a04d656e90e5202f3ad9314421b
nodejs-10:10.3.0-1          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:7625e739428caf97290440d2cb97ce1d53e80ae9935e28de67bfdfe6387cf3b5              About a minute ago   sha256:7625e739428caf97290440d2cb97ce1d53e80ae9935e28de67bfdfe6387cf3b5
nodejs-10:10.3.0            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:7625e739428caf97290440d2cb97ce1d53e80ae9935e28de67bfdfe6387cf3b5              About a minute ago   sha256:7625e739428caf97290440d2cb97ce1d53e80ae9935e28de67bfdfe6387cf3b5
nodejs-10:10.4.1            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:1f997200a488a690ac973d304c7d416362c95703432bef02094e07b84782d1c8              About a minute ago   sha256:1f997200a488a690ac973d304c7d416362c95703432bef02094e07b84782d1c8
nodejs-10:latest            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66              About a minute ago   sha256:b605bc8d918f88602d038f0c23268343d3aee6445de0806ce4ff8e67c4d14c66
nodejs-10:10.1.0            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:f638104b897d63e7d5fd721162b469df95430a04d656e90e5202f3ad9314421b              About a minute ago   sha256:f638104b897d63e7d5fd721162b469df95430a04d656e90e5202f3ad9314421b
nodejs-10:10.2.1-1          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:d2a927de65a9cba7b09afb3ebb62d0ba2e8509c207d18e392231962bc10c8fe9              About a minute ago   sha256:d2a927de65a9cba7b09afb3ebb62d0ba2e8509c207d18e392231962bc10c8fe9
nodejs-10:10.4.1-1          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:1f997200a488a690ac973d304c7d416362c95703432bef02094e07b84782d1c8              About a minute ago   sha256:1f997200a488a690ac973d304c7d416362c95703432bef02094e07b84782d1c8
nodejs-10:10.5.0-1          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:94217dc19978d075dd48ad57b8e635d2a481051adb5ac12961f2f1b9b17194e8              About a minute ago   sha256:94217dc19978d075dd48ad57b8e635d2a481051adb5ac12961f2f1b9b17194e8
nodejs-10:10.1.0-1          registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:5e1670c34b57386b38619e399076e4e1b449b747c97f18830e50dccd6b327b85              About a minute ago   sha256:5e1670c34b57386b38619e399076e4e1b449b747c97f18830e50dccd6b327b85
nodejs-10:10.2.1            registry.access.redhat.com/rhoar-nodejs/nodejs-10@sha256:d2a927de65a9cba7b09afb3ebb62d0ba2e8509c207d18e392231962bc10c8fe9              About a minute ago   sha256:d2a927de65a9cba7b09afb3ebb62d0ba2e8509c207d18e392231962bc10c8fe9
```

If you only want to import a specific image tag, use the following command.

```bash
$ oc tag registry.access.redhat.com/rhoar-nodejs/nodejs-10:latest nodejs-10:latest
```



### Managing Storage

#### Creating a Persistent Volume Claim

```yaml
apiVersion: v1
kind: Template
metadata:
  name: pvc
objects:
- apiVersion: v1
  kind: PersistentVolumeClaim
  metadata:
    annotations:
      volume.beta.kubernetes.io/storage-class: ${STORAGE_CLASS}
    name: ${PVC_NAME}
  spec:
    accessModes:
    - ${PVC_ACCESS_MODE}
    resources:
      requests:
        storage: ${PVC_SIZE}
parameters:
- description: Storage class to provision volume from
  name: STORAGE_CLASS
  required: true
  value: glusterfs-storage
- description: PVC Access Mode. Valid values: ReadWriteOnce, ReadWriteMany, ReadOnlyMany
  name: PVC_ACCESS_MODE
  required: true
  value: ReadWriteOnce
- description: Storage class to provision volume from
  name: PVC_SIZE
  required: true
  value: 1Go
- description: Storage class to provision volume from
  name: PVC_NAME
  required: true
```


### Deploying a python application

#### Creating a project

Multiple applications can be deployed within the same project, but in this example
we'll create a new project to simplify resources cleaning if needed.

```bash
PROJECT_NAME="demo_prj"
oc new-project $PROJECT_NAME
```

#### (Optional) Import a specific Python [Source-2-Image](https://github.com/sclorg/s2i-python-container) image

Python images are already preloaded on Openshift but should you need a newer 
image or to create your own, you easily do so.

Say for example your app requires a Python 3.6 image but the latest Python 
image available from the global service catalog is Python 3.5. We'll add our
own image in our project's local catalog!

The Openshift cluster can pull any images described in [Red Hat's Registry](https://access.redhat.com/containers)

```bash
IMG=python-36-rhel7:latest
ORGA=rhscl
REGISTRY=registry.access.redhat.com/rhscl/
oc import-image $PROJECT_NAME/$IMG --from=$REGISTRY/$ORGA/$IMG --confirm
```

#### (Optional) Create a source secret to customize .git/config

Depending on the source code management service you use, you may need to 
customize your git client configuration in order to:
- disable TLS certificate verification
- set username and password
- force URLs rewrite from SSH to HTTPS
- ...



##### (Optional - example) Disabling TLS certificate versivitation

This ca be accomplished by creating a .gitconfig file containing the following

```ini
[http]
        sslVerify=false
```

The following command will create it on the fly, with the .gitconfig content provided
encoded in using *base64*.

```bash
SOURCE_SECRET=my_git_config
cat <<EOT | oc create -f -
apiVersion: v1
data:
  .gitconfig: W2h0dHBdCglzc2xWZXJpZnk9ZmFsc2UK
kind: Secret
metadata:
  name: $SOURCE_SECRET
type: Opaque
EOT
```



#### Deploy the app

Now let's prepare to deploy the app on Openshift. It could be done with a one-liner command
but to follow 12-Factor's principles, we'll define environment variables.

First, the git repository to use and the Personal Access Token since it is a private repo.

```bash
GH_PAT=ReDaCtEdReDaCtEdReDaCtEdReDaCtEdReDaCtEd
GH_SRV=github.com
GH_ORGA=cip-core-mirrors/django-ex
GH_REPO=django-ex.git
```

```bash
APP_NAME="django-ex"
APP_OPTS="--name $APP_NAME"
APP_OPTS="$APP_OPTS --source-secret=$SOURCE_SECRET"
```

```bash
oc new-app ${IMG}~https://${GH_PAT}@${GH_SRV}/${GH_ORGA}/${GH_REPO} $APP_OPTS
```



#### Exposing the app outside the Openshift cluster

Now it's time to publish the app to users! The following command will to the trick!
It will create a route pointing to a service that load balance traffic across all pods running your app.
The route name will be automatically defined based on the application name, the project name and
the Openshift *wildcard_domain*.

```bash
oc expose svc/$APP_NAME
```

You can also choose your own route name but you'll also need to handle DNS configuration so
that it resolves to Openshift's north load-balancer.

```bash
oc expose svc/$APP_NAME --hostname=www.example.com
```



#### Cleaning up

Should you want to delete all resources created, here is how to proceed.



##### Delete statefull objects

The 'oc delete' command offers an 'all' option to delete all resource... well only stateless ones!
Sensitive/statefull objects are not processed when using 'all', so our source secret will not be
deleted. Note that it is possible to specify multiple object types such as 'all,secrets' but that
would also remove as well essential secrets needed for the project's system accounts.

```bash
oc delete all -l app=$APP_NAME
oc delete secret $SOURCE_SECRET
```



### Launching an image / debug it using cli

There may be situations where you'd like to gain access to an image to sneak
around or debug startup scripts. You can instantiate your image using a command
in the form of:

```bash
$ oc run <name> --image=<image to debug> -- <command string>
```

For example, the following will create a deployment config named *mydebug* based
on the image *myapp* and force it to sleep by listing the content of the special
device /dev/null which, by definition, returns nothing.

```bash
$ oc run mydebug --image=myapp -- tail -f /dev/null
```

You can then connect to it using the following command:

```bash
$ oc rsh mydebug
```
