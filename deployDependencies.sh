#!/usr/bin/env bash

echo ------------------------------------------------------------------------
echo -- install cert-manager
echo ------------------------------------------------------------------------

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.10.1/cert-manager.yaml

echo ------------------------------------------------------------------------
echo -- install kpack
echo ------------------------------------------------------------------------

kubectl apply -f https://github.com/pivotal/kpack/releases/download/v0.9.1/release-0.9.1.yaml

echo ------------------------------------------------------------------------
echo -- install contour
echo ------------------------------------------------------------------------

kubectl apply -f https://projectcontour.io/quickstart/contour.yaml

echo ------------------------------------------------------------------------
echo -- install metrics-server
echo ------------------------------------------------------------------------

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

echo ------------------------------------------------------------------------
echo -- install service binding
echo ------------------------------------------------------------------------

kubectl apply -f https://github.com/servicebinding/runtime/releases/download/v0.2.0/servicebinding-runtime-v0.2.0.yaml

kubectl get pods -A -w
