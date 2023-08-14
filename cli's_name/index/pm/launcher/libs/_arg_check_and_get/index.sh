#!/bin/bash

# /launcher/libs/sfauto/_arg_check_and_get/index.sh

function _arg_check_and_get()
{
  if [[ ${2} == -*  ]] || [[ "${2}_" == "None_" ]]; then
  echo "Option $1 requires an argument" >&2
  exit 1
  fi
  echo ${2}
}
