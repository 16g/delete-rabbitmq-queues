#!/bin/sh
USER=
PASS=
rabbitmqadmin -u "$USER" -p "$PASS" list queues | grep -oP "MTS-[\w\-]+" | while read line; do rabbitmqadmin -u "$USER" -p "$PASS" delete queue name=$line; done
