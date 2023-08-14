#!/bin/bash 

function _arg_check_and_get()
{
  if [[ "${2}" == -*  ]] || [[ "${2}_" == "None_" ]]; then
  echo -e "Option ${1} requires an argument\nRun with --help for more information." >&2
  exit 1
  fi
  echo "${2}"
}