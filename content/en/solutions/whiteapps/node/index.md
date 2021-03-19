---
title: "Node Api"
linktitle: "NodeJs"
description: "Get started with node white app"
publishdate: 2021-03-17
#lastmod: 2021-03-17
categories: [node, api]
menu:
  docs:
    identifier: so-dqs-nd
    parent: "so-dqs"
    weight: 20
tags: [node, api]
weight: 10
slug: "node-api"
aliases: []
toc: true
---


This base app allow you to quickly create an API in NodeJs with Typescript, ExpressJs to manage routing and TypeOrm to manage your database.
App source code is available at {{< link href="https://github.com/cip-core-mirrors/nodejs-api-template" blank="true">}}nodejs-api-template{{< /link >}}

## Quick Start

The easiest way to start this template is to use CIP Dev Box. By clicking on this {{< link href="https://codeready-cip-crw-common.apps.c1.ocp.dev.sgcip.com/f?url=https://github.com/cip-core-mirrors/nodejs-api-template" blank="true">}}link{{< /link >}} you will be redirect to CIP Dev Box. Sign on using one of CIP-IAM trusted Identity Provider. Once authenticated, Dev Box will start creating your workspace and you will be redirect into a web code editor to start developing your app.

The file `devFile.yaml` available in the source repository defines all the infrastructure needed to run this application. Two containers will be start by Dev Box:

* NodeJs container who contains all dependencies to start your application
* Postgresql database
  
## Run your application

Dev Box let you run various commands through a quick action tab.

To start your application:
1. Use the `download dependencies` command to install all required packages
2. Use the `Run the web app` command to start your application
3. Click on `nodejs` link to open your application
   
{{<figure src="media/node_command.png" alt="Command tab">}}

To debug your app, start it as explained above.
Then click on the `start` button from the `debug` menu. You can now set breakpoints to allowing you to control the app execution.

{{<figure src="media/node_debug.png" alt="Debug tab">}}



## Using another type of database

The example api use TypeOrm. It allow you to use any database compatible with TypeOrm.
To update your database type you first have to update your workspace's devfile in Dev Box.
In the component section you can update the image attribute to use the DockerImage related to your RDBMS.

Pay attention to RDBMS available on Docker Hub because were created to run processes as `root` user, which is forbidden by default on Openshift cluster, as it should be on any mutualized Kubernetes clusters anyway.

Instead we recommended you to use Redhat images like these:
* registry.redhat.io/rhel8/postgresql-12
* registry.redhat.io/rhel8/mariadb-103

All images available in the {{< link href="https://catalog.redhat.com/software/containers/explore" blank="true">}}Red Hat Catalog{{< /link >}} should run seamlessly.

For each image you will have to find how to define the default database, user and password and updating your devfile to use the correct environment variable.

If you need to change the hostname of the database or set a different port, you can do so in the endpoint section.

{{< highlight yaml "hl_lines=6-7 10 12-17,lineNos=true">}}
components:
  - endpoints:
      - attributes:
          discoverable: 'true'
          public: 'false'
        name: postgres
        port: 5432
    memoryLimit: 512Mi
    type: dockerimage
    image: registry.redhat.io/rhel8/postgresql-12
    env:
      - value: cip
        name: POSTGRESQL_USER
      - value: Wxcvbn2021
        name: POSTGRESQL_PASSWORD
      - value: cip
        name: POSTGRESQL_DATABASE
{{< /highlight >}}

In TypeOrm config file called `ormconfig.json` you will have to update the `type`, `host` and `port` attributes.

{{< highlight json "hl_lines=2-4,lineNos=true">}}
{
  "type": "postgres",
  "host": "postgres",
  "port": 5432,
  "synchronize": true,
  "entities": [
    "dist/entity/*.js"
  ],
  "subscribers": [
    "src/subscriber/*.js"
  ],
  "migrations": [
    "src/migration/*.js"
  ],
  "cli": {
    "entitiesDir": "src/entity",
    "migrationsDir": "src/migration",
    "subscribersDir": "src/subscriber"
  }
}
{{< /highlight >}}



## Contribute

This sample app was created to show how to link a NodeJs Api with a database using Dev Box.

If you find any bug feel free to open an issue on the github repository.

Contributions are welcome! Help us improve it if you identify missing feature(s), please feel free to open pull request on repository.