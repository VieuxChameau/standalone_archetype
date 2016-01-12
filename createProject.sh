#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo 'Usage : ./createProject.sh projectName'
    exit
fi

GROUP_ID="org.vieuxchameau"

mvn archetype:generate -DarchetypeRepository=local -DarchetypeGroupId=${GROUP_ID} -DarchetypeArtifactId=standalone-archetype -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=${GROUP_ID}  -DartifactId=$1 -DinteractiveMode=false -Dpackage=${GROUP_ID}
