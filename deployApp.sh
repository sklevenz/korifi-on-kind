#!/usr/bin/env bash

cf create-org org1
cf target -o org1
cf create-space space1
cf target -o org1 -s space1

cd cf-example-app
cf push test-app

open https://test-app.apps.apps-127-0-0-1.nip.io/