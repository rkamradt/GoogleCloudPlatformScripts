#!/bin/bash

name="test"

gcloud compute scp installstuff.sh $name:~/installstuff.sh
gcloud compute ssh $name --command 'chmod +x installstuff.sh'
gcloud compute ssh $name --command './installstuff.sh'
gcloud compute ssh $name --command 'rm installstuff.sh'
