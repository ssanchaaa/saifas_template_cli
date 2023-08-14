#!/bin/bash 

# Make sure only root can run our script

function _root_permission_must_be
{
    if [[ $EUID -ne 0 ]]; then
        echo "${1}: this script must be run as root"
        exit 1
    fi
}


