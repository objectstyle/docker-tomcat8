#!/bin/bash

# '$@' allows the caller to set any other properties...
export CATALINA_OPTS="$@"

# this start Tomcat on foreground
catalina.sh run