#!/bin/bash

## for initialization logs-steps structure

### set the current script path as PWD
pushd "${BASH_SOURCE%/*}" >> "/dev/null"

## includes

### include `index.inc.sh`
pIndexIncSh="./includes/index.inc.sh"
source ${pIndexIncSh}

### return the old PWD
popd >> "/dev/null"

function _logs_steps_init
{
    ### init `pStepNumberForLogConfig` and `pStepNameForLogConfig`

    pStepNumberForLogConfig=${1}
    pStepNameForLogConfig="${2}"    
    ### init `pActionNumberForLogConfig` and `pActionNameForLogConfig`

    pActionNumberForLogConfig=${3}
    pActionNameForLogConfig="${4}"

    ### source `logs-step` config 
    pLogStepsPath="${BASH_SOURCE%/*}/../../../../../../configs/paths/logs/index.conf"
    source "${pLogStepsPath}"

    ### pAllItemsOutputFile 
    pAllItemsOutputFileDir_logs_steps_init="${pSaifasArmRepoContentAbsoluteDirectoryPathQ_Action}""/""content"

    pAllItemsOutputPrettyShellFileDir_logs_steps_init="${pAllItemsOutputFileDir_logs_steps_init}""/""${pSaifasArmRepoContentAbsoluteDirectoryPathQ_ActionResultRichPrettyShell}"
    pAllItemsOutputPrettyShellFile_logs_steps_init="${pAllItemsOutputPrettyShellFileDir_logs_steps_init}""/""index.log"

    mkdir -p "${pAllItemsOutputPrettyShellFileDir_logs_steps_init}"
    
    pAllItemsOutputRawFileDir_logs_steps_init="${pAllItemsOutputFileDir_logs_steps_init}""/""${pSaifasArmRepoContentAbsoluteDirectoryPathQ_ActionsResultRaw}"
    pAllItemsOutputRawFile_logs_steps_init="${pAllItemsOutputRawFileDir_logs_steps_init}""/""index.log"

    mkdir -p "${pAllItemsOutputRawFileDir_logs_steps_init}"

    pStatisticOutputFileDir_logs_steps_init="${pSaifasArmRepoContentAbsoluteDirectoryPathQ_Result}"

    pStatisticOutputPrettyShellFileDir_logs_steps_init="${pStatisticOutputFileDir_logs_steps_init}""/""${pSaifasArmRepoContentAbsoluteDirectoryPathQ_ActionResultRichPrettyShell}"
    pStatisticOutputPrettyShellFile_logs_steps_init="${pStatisticOutputPrettyShellFileDir_logs_steps_init}""/""index.log"

    mkdir -p "${pStatisticOutputPrettyShellFileDir_logs_steps_init}"

    pStatisticOutputRawFileDir_logs_steps_init="${pStatisticOutputFileDir_logs_steps_init}""/""${pSaifasArmRepoContentAbsoluteDirectoryPathQ_ActionsResultRaw}"
    pStatisticOutputRawFile_logs_steps_init="${pStatisticOutputRawFileDir_logs_steps_init}""/""index.log"

    mkdir -p "${pStatisticOutputRawFileDir_logs_steps_init}"

}

