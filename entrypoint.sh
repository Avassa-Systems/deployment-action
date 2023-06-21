#!/bin/sh -l

set -eu

ct="$1"
username="$2"
password="$3"
dep_name="$4"
dep_spec="$5"

echo "Download supctl"
curl -s -f -OL "https://$ct/supctl"
chmod +x ./supctl

echo "Login"
echo "$password" | ./supctl --host="$ct" "do" login "$username" > /dev/null

echo "Send deployment spec $dep_spec"
./supctl replace application-deployments "$dep_name" < "$dep_spec"
