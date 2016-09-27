#!/bin/bash/


mvn archetype:generate -DgroupId=com.chewen -DartifactId=cw-model

mvn archetype:generate -DgroupId=com.chewen.web -DartifactId=cw-www-web -DarchetypeArtifactId=maven-archetype-webapp



mvn dependency:copy-dependencies

mvn dependency:tree
