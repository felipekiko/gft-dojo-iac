#!/bin/bash

aws s3 sync ../app/frontend/ s3://dojo.kiko.sh/ --acl public-read --profile felipekiko
