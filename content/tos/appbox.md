---
title: "App Boxes"
linktitle: "App boxes"
date: 2019-12-09T17:52:40+01:00
description: "Application Topologies as a service"
publishdate: 2019-12-09T17:52:40+01:00
lastmod: 2019-12-09T17:52:40+01:00
categories: [legal,security]
tags: ["legal,security"]
menu:
  docs:
    identifier: tos-ab
    parent: "tos"
    weight: 30
weight: 10
slug: ""
aliases: []
toc: true
layout: about
---

# App Box Term of Service

Last modified January 9, 2018

## Services autorisés

Aucun services CSP autorisés via cette offre spécifiquement, les applications déployées sur l'offre ont cependant un accès internet large permettant d'accéder aux différents services externes ainsi qu'aux différentes "Application Box" et "Cloud Box".

## Données manipulées

1.  Pas de données SocGen importées dans "Application Box"
2.  Toutes les données créées dans les "Application Box" (infrastructure SocGen) sont considérées comme des données SocGen. Interdiction de créer de la donnée sensible (signature d'une charte utilisateur).

## Temporalité

Durée de vie limitée à déterminer avec la SSI au moment de la création.
La durée maximale est de 3 mois , reconductible une fois.

## Interconnexion on premise

1.  Accès aux "Application Box" depuis des postes SocGen uniquement via déport d'écran (Bufferzone pour les applications, Bufferzone console ou Endpoint API pour flux type "administration" des "Application Box").
2.  Pas d'interconnexion avec le SI SocGen on premise (autre que poste collaborateur).

## Interconnexion avec l'extérieur

1.  Accès aux "Application Box" possible depuis un poste non maitrisé (BOYD, etc.)
2.  Browsing : autorisation uniquement des ports 80 (HTTP) et 443 (HTTS) avec passage par cIAP obligatoire.
    a. Hosting : flux HTTP et HTTPS uniquement pour les sous-domaines DNS de « .oso.lab-nxtit.com ».
    b. Hosting : flux autres que HTTP et HTTPS uniquement sur dérogation, si compatible avec les éléments de communication réseau intermédiaires et le socle OpenShift déployé.

## Référentiel de l'identité

1.  Référentiel des utilisateurs directement dans Openshift ou via fédération OAuth2 (ex: organisation GitHub public ou Gaya).
2.  Inclus dans la charte utilisateur : Les accès se gèrent via comptes nominatifs uniquement (pas de compte de service / partagé / générique) afin d’être en capacité d’identifier les utilisateurs des actions.

## Référentiel d'identité

1.  Référentiel des utilisateurs directement dans Openshift ou via fédération OAuth2 (ex: organisation GitHub public ou Gaya).
2.  Inclus dans la charte utilisateur : Les accès se gèrent via comptes nominatifs uniquement (pas de compte de service / partagé / générique) afin d’être en capacité d’identifier les utilisateurs des actions.

## Traçabilité

1.  Ensemble des logs CIAP et OpenShift déversés dans le compte PRD-LOG (GTS).
2.  Logs applicatives des composants déployés dans les "Application Box" à la main des responsables des "Application Box".

## Contrôles automatisés

1.  Set de contrôles automatisés déployés à la création de l’offre "Application Box"
2.  Désactivation automatique des « Application Box » (« projets » OpenShift) à la fin de la durée de vie prédéfinie.
3.  Désactivation automatique des flux vers et venant d’OpenShift :
    En cas de suppression de la remonté des logs.</p>

## Restrictions IAM

1.  IAM sur l’offre "Application Box" à la main exclusive de l’équipe en charge de l’offre
2.  Le responsable de la "Application Box" peut déléguer l’accès à sa "Box" à d’autres utilisateurs habilités sur le socle OpenShift
3.  Le responsable de la "Application Box" gère en toute autonomie l’IAM de son application

## Questionnaire de qualification

Questionnaire à remplir par le responsable de l' "Application Box" afin de configurer les paramètres d’accès et d’identifier l'offre :

1. Durée de vie désirée ?
1. Besoin d’une exposition à des Client SG ?
1. Besoin de rapatrier des données dans le SI ?
1. Quelle type de données vont être créé (C0 pré-autorisé, autre sous dérogation de la SSI de la DSI de rattachement) ?
1. Nombre de personne y ayant accès ? 1 personne responsable de l'Application Box, qui peut « inviter » d’autres utilisateurs habilités sur le socle OpenShift.
1. Quels flux manipulés (notamment flux entrant hors HTTP) ? En mode dérogatoire uniquement, avec paramétrage manuel du CIAP et si compatibles avec OpenShift.
1. Liste de services autres que les catalogues globaux et locaux OpenShift prévus d’être utilisés ?</p>

## Charte d'utilisation

Signature d'une charte utilisateur :
1. Les accès doivent être gérés via comptes nominatifs uniquement (pas de compte de service / partagé / générique) afin d’être en capacité d’identifier les utilisateurs des actions.
1. Il est interdit de créer des données sensibles C2/C3.
1. Il est interdit de faire rentrer des flux de quelque nature qu’il soit dans le SI on Premise.
1. Il est interdit de créer un service de production dans les serveurs de rebond (Shadow IT).
