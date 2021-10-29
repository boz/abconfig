#!/bin/sh

if which hostnamectl >/dev/null; then
  host="$(hostnamectl --static)"
else
  host="$(hostname -s)"
fi


if [ -f "hosts/$host" ]; then
  hosts="hosts/$host"
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
