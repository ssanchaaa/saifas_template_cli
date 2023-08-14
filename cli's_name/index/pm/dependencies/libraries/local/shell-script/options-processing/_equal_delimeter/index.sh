#!/bin/bash 


# --options=opt1

function _equal_delimeter
{
  local pFullOption="${1}"

  if [[ "${pFullOption}" == ?*"="?* ]] &&
     [[ "${pFullOption}" != "="* ]] &&
     [[ "${pFullOption}" != *"=" ]]
  then
    echo "${pFullOption#*"="}"
  else
    echo "Error: malformed parameter. Expected expression like: option=value"
    exit
  fi

}