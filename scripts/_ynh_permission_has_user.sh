#!/bin/bash

ynh_permission_has_user() {
    local legacy_args=pu
    # Declare an array to define the options of this helper.
    local -A args_array=( [p]=permission= [u]=user= )
    local permission
    local user
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"

    if ! ynh_permission_exists --permission=$permission
    then
        return 1
    fi

    # Check both allowed and corresponding_users sections in the json
    for section in "allowed" "corresponding_users"
    do
        if yunohost user permission info "$app.$permission" --output-as json --quiet \
            | jq -e --arg user $user --arg section $section '.[$section] | index($user)' >/dev/null
        then
            return 0
        fi
    done

    return 1
}