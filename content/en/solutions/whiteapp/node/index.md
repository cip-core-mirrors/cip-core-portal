---
title: "Node Api"
linktitle: "NodeJs"
description: "Get started with node white app"
publishdate: 2021-03-17
lastmod: 2021-03-17
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


This base app allow you to quicly create an API in nodeJs with Typescript, ExpressJs to manage routing and TypeOrm to manage your database.
You can access the app source code with the following link [nodejs-api-template](https://github.com/cip-core-mirrors/nodejs-api-template)

## Quick Start

The easiest way to start this template is to use CIP Code Spaces. By clicking on this [link](https://codeready-cip-crw-common.apps.c1.ocp.dev.sgcip.com/f?url=https://github.com/cip-core-mirrors/nodejs-api-template) you will be redirect to CIP Code Spaces. To login you can use your github account or your entreprise account. After login Code Spaces will start creating your workspace and you will be redirect into a web code editor to start developping your app

This app contains file name `devFile.yaml` who define all the infrastructure needed to run this application. Two containers will be start by Code Spaces:
* NodeJs container who contains all dependencies to start your application
* Postgresql database
  
## Run your application

CodeSpaces offer us a quick action tab.

To start your application:
1. Use the `download dependencies` command to install all require package
2. Use the `Run the web app` command to start your application
3. Click on `nodejs` link to open your application
   
{{<figure src="media/node_command.png" alt="Command tab">}}

If you want to debug your application you first have to start your application like above.
Then on the debug menu click on the start button. You can now add breakpoints to debug your application

{{<figure src="media/node_debug.png" alt="Debug tab">}}

## Using another type of database

The example api use TypeOrm. It allow you to use any database compatible with TypeOrm.
To update your database type you first have to update your workspace devfile in Code Spaces.
In the component section you can update the image attribute to use the DockerImage related to your SGBD. 
Be careful to SGBD you can find on DockerHub becausse some require admin right to be launch and in Openshift container don't have admin right
Instead we recommended use Redhat images like:
* registry.redhat.io/rhel8/postgresql-12
* registry.redhat.io/rhel8/mariadb-103

For each image you will have to find how to define the base database, user and password and updating your devfile to use the correct environment variable
If you want to change the hostname of the database or the port you can change them in the endpoint section 

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

In TypeOrm config file called `ormconfig.json` you will have to update the `type`, `host` and `port` attributes

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

This base app has been created to show how to link a NodeJs Api with a database using Code Spaces.
If you find any bug feel free to open an issue on the github repository
This base app is open to any contribution if you find any feature who should be present on this base app feel free to open pull request on repository