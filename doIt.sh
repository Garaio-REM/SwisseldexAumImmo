#!/bin/bash
wget https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.33/swagger-codegen-cli-3.0.33.jar -O swagger-codegen-cli.jar

java -jar swagger-codegen-cli.jar generate -l ruby -i ./API-Definition\ AUM\ Immo.openapi.json -l ruby -c ./config.json
