---
title: "Tool Boxes"
date: 2019-12-09T17:52:40+01:00
description: "Getting you started in minutes on the CIP"
publishdate: 2019-12-09T17:52:40+01:00
lastmod: 2019-12-09T17:52:40+01:00
categories: [legal,security]
tags: ["legal,security"]
menu:
  docs:
    identifier: tos-tb
    parent: "tos"
    weight: 20
weight: 10
slug: ""
aliases: []
toc: false
layout: about
---

# Tools Box Terms of Service

Last modified January 9, 2018

## Services autorisés
Aucun services CSP autorisés via cette offre spécifiquement, les serveurs de rebond permettent cependant d’accéder aux Sandbox as a Service. Les services CSP autorisés seront donc ceux de l’offre Application Box.

## Données manipulées
Pas de données SG importées dans les serveurs de rebond.
2. Toutes les données créées par les serveurs de rebond (infrastructure SocGen) sont considérées comme des données SocGen. Interdiction de créer de la données sensible (signature d’une charte utilisateur).

## Temporalité
Durée de vie limitée à déterminer avec la SSI au moment de la création.

## Interconnexion on premise
1. Accès aux serveurs de rebond depuis des postes SocGen uniquement via déport d'écran (Bufferzone pour les applications, Bufferzone console ou Endpoint API pour flux type "administration" des "Application Box").
2. Pas d'interconnexion avec le SI SocGen on premise (autre que poste collaborateur).

## Interconnexion avec l'extérieur
1. Accès aux serveurs de rebond possible depuis un poste non maitrisé (BOYD, etc.)
2. Browsing : autorisation uniquement des ports 80 (HTTP) et 443 (HTTS) avec passage par cIAP obligatoire.
3. Hosting : aucun flux entrant autre que celui entre le gestionnaire de session et le serveur de rebond.

## Référentiel de l'identité
1. Référentiel des utilisateurs directement dans le gestionnaire de session ou via un compte IAM dédié ou fédération (en respectant l’interdiction d’avoir des flux entrants dans le SI On Premise).
2. Inclus dans la charte utilisateur : Les accès se gèrent via comptes nominatifs uniquement (pas de compte de service / partagé / générique) afin d’être en capacité d’identifier les utilisateurs des actions.

## Traçabilité
Ensemble des logs CIAP et du gestionnaire de session déversés dans le compte PRD-LOG (GTS).

## Contrôles automatisés
1. Set de contrôles automatisés déployés à la création de l’offre « Serveurs de rebond »-aaS.
2. Désactivation automatique du serveur de rebond à la fin de la durée de vie prédéfinie.
3. Désactivation automatique des accès utilisateurs au gestionnaire de session: En cas de suppression de la remonté des logs.

## Restrictions IAM
1. IAM sur le gestionnaire de session à la main exclusive de l’équipe en charge de l’offre.
2. Aucun accès IAM spécifique depuis le serveur de rebond.

## Questionnaire de qualification
Questionnaire à remplir par le responsable de la "Application Box" afin de setter les paramètres d’accès et d’identifier l'offre :

a. Durée de vie désirée ?
b. Besoin d’une exposition à des Client SG ?
c. Besoin de rapatrier des données dans le SI ?
d. Quelle type de données vont être créé (C0/C1/C2/C3) ?
e. Nombre de personne y ayant accès ? 1 seule personne par serveur de rebond.
f. Quels flux manipulés (notamment flux entrant hors HTTP) ? Aucun flux entrant.
g. Liste de services autres que l’offre de serveurs rebond prévus d’être utilisés ?

## Charte d'utilisation
Signature d'une charte utilisateur :

a. Les accès doivent être gérés via comptes nominatifs uniquement (pas de compte de service / partagé / générique) afin d’être en capacité d’identifier les utilisateurs des actions.
b. Il est interdit de créer des données sensibles C2/C3.
c. Il est interdit de faire rentrer des flux de quelque nature qu’il soit dans le SI on Premise.
d. Il est interdit de créer un service de production dans les serveurs de rebond (Shadow IT).
