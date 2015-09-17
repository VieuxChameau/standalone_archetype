#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo 'Usage : ./createProject.sh projectName'
    exit
fi

mvn archetype:generate -DarchetypeRepository=local -DarchetypeGroupId=org.vieuxchameau -DarchetypeArtifactId=standalone-archetype -DarchetypeVersion=1.0-SNAPSHOT  -DartifactId=$1 -DinteractiveMode=false
