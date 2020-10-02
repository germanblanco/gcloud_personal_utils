#!/bin/bash

gcloud config set project $1
CLUSTER_NAME=$(gcloud container clusters list | grep RUNNING | awk '{ print $1 }')
gcloud container clusters get-credentials $CLUSTER_NAME --project $1 --region europe-west3
