# Shell functions for the chef-solo module.
#/ usage: source RERUN_MODULE_DIR/lib/functions.sh command
#

# Read rerun's public functions
. $RERUN || {
    echo >&2 "ERROR: Failed sourcing rerun function library: \"$RERUN\""
    return 1
}

# Check usage. Argument should be command name.
[[ $# = 1 ]] || rerun_option_usage

# Source the option parser script.
#
if [[ -r $RERUN_MODULE_DIR/commands/$1/options.sh ]] 
then
    . $RERUN_MODULE_DIR/commands/$1/options.sh || {
        rerun_die "Failed loading options parser."
    }
fi

# - - -
# Your functions declared here.
# - - -

#
# for registering and consuming chef validation pem 
#
CHEF_VALIDATION_GROUP_ID="com.rms.chef.validation"
CHEF_VALIDATION_ARTIFACT_VERSION="LATEST"
CHEF_VALIDATION_ARTIFACT_FORMAT="pem"
CHEF_VALIDATION_ARTIFACT_FILE="/etc/chef/validation.pem"



