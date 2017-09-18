#!/bin/sh

if [ -f "hosts/$(hostname -s)" ]; then
  hosts="hosts/$(hostname -s)"
else
  hosts="hosts/default"
fi

if [ $# -eq 0 ]; then
  args="workstation.yml"
else
  args=$@
fi

ansible-playbook -i "$hosts" $args
