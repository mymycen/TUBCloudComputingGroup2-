#!/bin/bash

# Check parameters
test $# = 1 || { echo "Need 1 parameter: Name of the stack to create"; exit 1; }
STACK="$1"

# Create the stack using server-landscape.yaml and defining all necessary parameters
openstack stack create --wait --template server-landscape.yaml --parameter "external_net=tu-internal;key_pair=cloudgroup02;flavor=610f44b0-d25a-44bc-a6b1-8b22e68675e5;image=11f6b8aa-31df-4b66-8b42-5ee9760c47ba;zone=Cloud Computing 2017" $STACK
