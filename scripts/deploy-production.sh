#!/bin/bash

#create env if not present
/usr/local/bin/kubectl create ns production

#kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n production
#sleep 60
#kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n production

#rm -rf helm
#helm repo add helm http://35.224.229.155/artifactory/helm-local
#helm repo update

#helm install
/usr/local/bin/helm install --namespace production --name dotnetcorebmb-latest-prod --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

#helm upgrade
#helm upgrade --install --namespace production dotnetcorebmb-latest-prod --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

