---
title: "How to contribute"
date: 2019-12-09T17:52:40+01:00
description: "***Help us build the platform you're dreaming of!***"
publishdate: 2019-12-09T17:52:40+01:00
lastmod: 2019-12-09T17:52:40+01:00
categories: [opensource]
tags: ["opensource"]
weight: 10
slug: ""
aliases: []
toc: false
#layout: about
---

#### Ownership and confidentiality level

This website and related products and services is provided by {{< link href="https://github.com/societe-generale" blank="true">}}Société Générale{{< /link >}} and is maintained by the {{< link href="https://github.com/orgs/societe-generale/teams/cip-ps/" blank="true">}}Cloud Innovation Platform Professional Services{{< /link >}} team.

It is classified as confidentiality level C0, meaning public data.



#### Why contribute?

Help us make this product **better fit your needs**!



#### Who can contribute?

<!-- rework to include pointers for each contributions -->
Everyone! You can help us by **improving documentation**, **describe the new features** you'd like to get access to, **identify bugs** and **help fixing them** if you can, **share your success stories**, ...

**ISVs, startups, schools**, etc. you're also invited to **integrate your solutions in our service catalog** so all **corporate users** using **our platform or other clones** deployed from its source code **can find your solutions easily**!



#### Where is the source code?

The source code is located in various {{< link href="https://github.com" blank="true">}}github.com{{< /link >}} repositories listed below.

- Umbrella project {{< link href="https://github.com/societe-generale/cloud-innovation-platform" blank="true">}}https://github.com/societe-generale/cloud-innovation-platform{{< /link >}}
- Website source code {{< link href="https://github.com/cip-core-mirrors/cip-core-portal" blank="true">}}https://github.com/cip-core-mirrors/cip-core-portal{{< /link >}}
- Website theme {{< link href="https://github.com/cip-core-mirrors/cip-core-portal-theme" blank="true">}}https://github.com/cip-core-mirrors/cip-core-portal-theme{{< /link >}}



#### How is it built?

We created a **cloud-native app** leveraging **gitops-based** management process on top of the  {{< link href="#" blank="true">}}Cloud Platform services{{< /link >}}.

<!-- Add stackalitics like stats -->

- It is originally written in {{< link href="https://en.wikipedia.org/wiki/Markdown" blank="true">}}Markdown{{< /link >}}, which is a technical 'markup' language, enabling to manipulate it and render it under various forms.
- Its content is stored and versioned in the {{< link href="https://github.com/cip-core-mirrors/cip-core-portal" blank="true">}}https://github.com/cip-core-mirrors/cip-core-portal{{< /link >}} {{< link href="https://git-scm.com/" blank="true">}}git{{< /link >}} repository hosted on {{< link href="https://github.com" blank="true">}}GitHub{{< /link >}}.
- It is built using a *continuous delivery* production flow, as the Cloud Innovation Platform Professional Team members process contributions submitted through pull requests. 
- Once a contribution is validated, the GitHub platform triggers automatically (through a mechanism called *webhooks*) a **serverless** function that will generate a *draft* website using {{< link href="https://gohugo.io/" blank="true">}}Hugo{{< /link >}}, one of the most popular open-source static site generators.

