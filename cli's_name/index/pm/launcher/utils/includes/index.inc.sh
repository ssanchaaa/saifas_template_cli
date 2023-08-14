#!/bin/bash

# includes for "/launcher/utils"

### set the current script path as PWD
pushd ${BASH_SOURCE%/*} >> "/dev/null"

PLibsRelativePath="../../libs"

### function "_help_print"
pLib_help_print=${PLibsRelativePath}"/_help_print/index.sh"
source "${pLib_help_print}"

### function "_version_print"
pLib_help_print=${PLibsRelativePath}"/_version_print/index.sh"
source "${pLib_help_print}"

### function `_arg_check_and_get`
pLib_arg_check_and_get=${PLibsRelativePath}"/_arg_check_and_get/index.sh"
source "${pLib_arg_check_and_get}"

pConfigsPathsRelativePath="../../../configs/paths"

### config `repo-content`
pPathsRepoCotentConfig=${pConfigsPathsRelativePath}"/repo/repo_content/index.conf"
source ${pPathsRepoCotentConfig}

### config `targetProject` 
pPathsTargetConfig=${pConfigsPathsRelativePath}"/target/index.conf"
source ${pPathsTargetConfig}

### config `dependencies`
source "${pSaifasArmRepoContentAbsoluteDirectoryPathSourceQ_dependenciesConfigs}"


### return the old PWD
popd >> "/dev/null"
