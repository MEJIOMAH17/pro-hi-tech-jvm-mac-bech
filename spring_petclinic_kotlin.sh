#!/bin/bash

rm -rf spring-petclinic-kotlin 
git clone https://github.com/spring-petclinic/spring-petclinic-kotlin.git &> /dev/null
cd spring-petclinic-kotlin 
./gradlew test &> /dev/null
./gradlew clean &> /dev/null
./gradlew test 2>&1 | grep 'BUILD SUCCESSFUL'
rm -rf ../spring-petclinic-kotlin
