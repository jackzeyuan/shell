#!/bin/bash/


mvn archetype:create -DgroupId=com.chewen -DartifactId=cw-model

mvn archetype:create -DgroupId=com.chewen.web -DartifactId=cw-www-web -DarchetypeArtifactId=maven-archetype-webapp
