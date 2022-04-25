# Challenge 2: Code to query full and specific instance metadata in GCP

## Pre-requisites:
Below 3 things to be setup on the VM for which the metadata is to be queried:
1. Git
2. Google Cloud SDK
3. Python 3.x
4. A google cloud account
5. Running Instance

This repository contains 2 files:
1. get_metadata.sh -> Contains code to fetch full instance metadata in instancemetadata.json file dynamically.
2. metadayaquery.py -> Contains code to fetch specific data keys from the instancemetadata.json invoked by get_metadata.sh

## Steps
1. Login into the compute engine
2. Clone this repository
3. cd challenge2
4. ./get_metadata.sh and enter the values prompted for.

