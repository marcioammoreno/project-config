#!/bin/bash

/usr/bin/java \
	{{ config.jvm.args }} \
  -cp "{{ config.deployment.path}}/bin/*:{{ config.deployment.path}}/lib/*" \
  {{ app_launcher }} \
  {{ config.deployment.path}}/apps/{{ app }}/{{ app }}.cfg \
       	2>&1 | tee {{ config.deployment.path}}/logs/{{ app }}.log