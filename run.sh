#!/bin/sh

if [ -f "hosts/$(hostname)" ]; then
  hosts="hosts/$(hostname)"
else
  hosts="hosts/default"
fi

if [ $# -eq 0 ]; then
  args="workstation.yml"
else
  args=$@
fi

ansible-playbook -i "$hosts" $args
