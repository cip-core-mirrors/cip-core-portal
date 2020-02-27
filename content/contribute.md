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

This website and related products and services is provided by [Société Générale](https://github.com/societe-generale) and is maintained by the [Cloud Innovation Platform Professional Services](https://github.com/orgs/societe-generale/teams/cip-ps/) team.

It is classified as confidentiality level C0, meaning public data.



#### Why contribute?

Help us make this product **better fit your needs**!



#### Who can contribute?

<!-- rework to include pointers for each contributions -->
Everyone! You can help us by **improving documentation**, **describe the new features** you'd like to get access to, **identify bugs** and **help fixing them** if you can, **share your success stories**, ...

**ISVs, startups, schools**, etc. you're also invited to **integrate your solutions in our service catalog** so all **corporate users** using **our platform or other clones** deployed from its source code **can find your solutions easily**!



#### Where is the source code?

The source code is located in various [github.com](https://github.com) repositories listed below.

- Umbrella project [https://github.com/societe-generale/cloud-innovation-platform](https://github.com/societe-generale/cloud-innovation-platform)
- Website source code [https://github.com/cip-core-mirrors/cip-core-portal](https://github.com/cip-core-mirrors/cip-core-portal)
- Website theme [https://github.com/cip-core-mirrors/cip-core-portal-theme](https://github.com/cip-core-mirrors/cip-core-portal-theme)



#### How is it built?

We created a **cloud-native app** leveraging **gitops-based** management process on top of the  [Cloud Platform services](#).

<!-- Add stackalitics like stats -->

- It is originally written in [Markdown](https://en.wikipedia.org/wiki/Markdown), which is a technical 'markup' language, enabling to manipulate it and render it under various forms.
- Its content is stored and versioned in the [https://github.com/cip-core-mirrors/cip-core-portal](https://github.com/cip-core-mirrors/cip-core-portal) [git](https://git-scm.com/) repository hosted on [GitHub](https://github.com).
- It is built using a *continuous delivery* production flow, as the Cloud Innovation Platform Professional Team members process contributions submitted through pull requests. 
- Once a contribution is validated, the GitHub platform triggers automatically (through a mechanism called *webhooks*) a **serverless** function that will generate a *draft* website using [Hugo](https://gohugo.io/), one of the most popular open-source static site generators.

