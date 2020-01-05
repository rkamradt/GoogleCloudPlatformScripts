#!/bin/bash

name="test"

gcloud beta compute instances create $name \
--machine-type=n1-standard-1 --subnet=default --network-tier=PREMIUM \
--no-restart-on-failure --maintenance-policy=TERMINATE --preemptible \
--service-account=46773945509-compute@developer.gserviceaccount.com \
--tags=https-server --image=ubuntu-1910-eoan-v20191217 --image-project=ubuntu-os-cloud \
--boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=$name \
--reservation-affinity=any
