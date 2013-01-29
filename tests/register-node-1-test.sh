#!/usr/bin/env roundup
#
# This file contains the test plan for the `register-node` command.
#    
#/ usage:  rerun stubbs:test -m chef-solo -p register-node [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "register-node"


# ------------------------------
# Replace this test. 
it_can_register_this_node() {
   rerun chef-solo:register-node --key-repo-url http://artifactory.dev4.rms.com:8081/artifactory --key-repo-id keys-local --key-repo-username admin --key-repo-password password --chef-server ip-10-80-137-106
}


