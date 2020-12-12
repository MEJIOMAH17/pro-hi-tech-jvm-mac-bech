#!/bin/bash

rm -rf spring-petclinic 
git clone https://github.com/spring-projects/spring-petclinic.git &> /dev/null
cd spring-petclinic 
mvn package &> /dev/null
mvn clean &> /dev/null
mvn package 2>&1 | grep 'Total time'
rm -rf ../spring-petclinic
