#!/bin/bash
echo "----SCRIPT EXECUTION STARTS----"
echo "Logging using gcloud sdk"
gcloud auth login
if [ $? -ne 0 ]
then
    echo "Failed to login via Gcloud SDK"
    exit 1
fi
read -p "Please enter the projectid:  " projectid
read -p "Please enter the zone: " zone
read -p "Please enter the instancename: " instancename
read -p "Enter 1 for full instance metadata and 2 for data key [1 or 2]: " x
#if [ $x == 2 ]
#then
   # read -p "Enter comma separated values of data keys to be retrieved: " keys
#fi

if [ $x == 1 ]
then
    gcloud compute instances describe $instancename --format=json --project=$projectid --zone=$zone > instancemetadata.json
else
    gcloud compute instances describe $instancename --format=json --project=$projectid --zone=$zone > instancemetadata.json
    python3 metadataquery.py
fi
echo "----SCRIPT EXECUTION COMPLETED----"