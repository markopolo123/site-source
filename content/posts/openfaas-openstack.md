+++
title = "OpenFAAS via Containerd on Openstack"
date = "2020-05-15"
author = "Mark"
cover = "/img/nasa-earth-space.jpg"
tags = ["OpenFAAS", "openstack", "Containerd"]
keywords = ["serverless", "Linux", "openstack"]
description = "Deploying OpenFAAS on Openstack"
showFullContent = false
+++



# Intro
[OpenFAAS](https://www.openfaas.com/) is a serverless tool. One of the things I like most about it - it's pretty agnostic. You can bring your own infra or orchestrator and roll with Dockerfiles. No vendor lock in!

Their tagline:
`OpenFaaS® makes it simple to deploy both functions and existing code to Kubernetes`

While it is mainly used with k8s, there are also providers for other orchestrators, such as Hashicorp's Nomad. Today I'll be trying out a new provider for [Containerd](https://containerd.io/) on my Raspberry Pi 4b.