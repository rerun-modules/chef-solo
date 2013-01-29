#!/usr/bin/env roundup
#
# This file contains the test plan for the `register-server` command.
#    
#/ usage:  rerun stubbs:test -m chef-solo -p register-server [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "register-server"

it_can_register_this_server() {
 rerun chef-solo:register-server --key-repo-url http://artifactory.dev4.rms.com:8081/artifactory --key-repo-id keys-local --key-repo-username admin --key-repo-password password
}

