#!/bin/bash

# koleso


trap '_dot; exit'  15

pWheelPID=`echo ${$}`

pSaveStartPosition=$'\e7'
pGoToStartPosition=$'\e8'

echo -ne ${pSaveStartPosition}

function _dot
{

echo -ne ${pGoToStartPosition}$'\033[0K'
sleep 0.2s
echo -ne "."
sleep 0.2s
echo -ne "."
sleep 0.2s
echo -ne "."
sleep 0.2s
echo -ne ${pGoToStartPosition}$'\033[0K'
}

while true
do
  _dot
done