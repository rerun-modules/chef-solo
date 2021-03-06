# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu Jan 24 16:05:30 CST 2013
#
#/ usage: chef-solo:install  --role <> [ --pkgurl <>] [ --cfgpkgurl <>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --role) rerun_option_check $# $1; ROLE=$2 ; shift ;;
            --pkgurl) rerun_option_check $# $1; PKGURL=$2 ; shift ;;
            --cfgpkgurl) rerun_option_check $# $1; CFGPKGURL=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.

    # Check required options are set
    [ -z "$ROLE" ] && { echo >&2 "missing required option: --role" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
ROLE=
PKGURL=
CFGPKGURL=


