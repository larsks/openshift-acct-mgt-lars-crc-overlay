#!/bin/sh

. ${0%/*}/develop-trigger.env

curl -X POST -k \
	-H 'Content-type: application/json' -d '{}' \
	https://api.crc.testing:6443/apis/build.openshift.io/v1/namespaces/onboarding/buildconfigs/build-acct-mgt-image/webhooks/${WebHookSecretKey}/generic
