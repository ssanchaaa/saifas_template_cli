#!/bin/bash

# includes for "/dependencies/liraries/local/_already_exist_check/launcher/utils"

### set the current script path as PWD
pushd ${BASH_SOURCE%/*} >> "/dev/null"


pConfigsPathsRelativePath="../../../../../../../configs/paths"

### config `repo-content`
pPathsRepoCotentConfig=${pConfigsPathsRelativePath}"/repo/repo_content/index.conf"
source ${pPathsRepoCotentConfig}

### config `logs-steps`
pPathsLogsStepsConfig=${pConfigsPathsRelativePath}"/logs/index.conf"
source ${pPathsLogsStepsConfig}

### config `dependencies`
source "${pSaifasArmRepoContentAbsoluteDirectoryPathSourceQ_dependenciesConfigs}"

### config `file-directory`
source "${pDependenciesConfigsPathsAbsolutePath_FileDirectoryContentQ}"

### config `shell-script`
source "${pDependenciesConfigsPathsAbsolutePath_ShellScriptContentQ}"

### function `_arg_check_and_get`
source "${pDependenciesLibrariesLocalAbsolutePath_OptionsProcessingArgCheckAndGetQ}"

### return the old PWD
popd >> "/dev/null"