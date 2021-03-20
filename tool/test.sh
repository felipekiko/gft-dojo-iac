#!/bin/bash

curl -I http://dojo.kiko.sh
curl -I http://dojo-api.kiko.sh

sh deploy-backend.sh
sh deploy-frontend.sh
