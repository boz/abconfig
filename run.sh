#!/bin/sh

if [ -f "hosts/$(hostname -s)" ]; then
  hosts="hosts/$(hostname -s)"
else
  hosts="hosts/default"
fi

tags=""

case "$1" in
  --tags)
    tags="$1 $2"
    shift;shift
    ;;
esac

if [ $# -eq 0 ]; then
  args="workstation.yml"
else
  args=$@
fi

ansible-playbook -i "$hosts" $tags $args
