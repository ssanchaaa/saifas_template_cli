#!/bin/bash 

function _user_presence_check
{
    pFindName=`compgen -u ${1}`

    if [[ ${1} == ${pFindName} ]]
    then
        echo 0
    else 
        echo 1
    fi
}
