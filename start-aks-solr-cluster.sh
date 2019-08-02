#!/bin/bash

kubectl create configmap solr-cluster-config --from-env-file=configmap/solr-cluster-config.properties 

kubectl get configmap

kubectl apply -f aks/storageclass-solrcluster.yml

kubectl get storageclass

kubectl apply -f aks/service-solr-cluster.yml

kubectl get service

kubectl apply -f statefulsets/statefulset-solr-cluster.yml

kubectl get statefulsets
