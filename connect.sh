#!/bin/bash

while [[ $# -gt 0 ]]; do
  key="$1"

  case $key in
    -yourflagname1)
      username="username"
      ip_address="ipaddress"
      ;;
    -yourflagname2)
      username="username"
      ip_address="ipaddress"
      ;;
    -yourflagname3)
      username="username"
      ip_address="ipaddress"
      ;;
    -yourflagname4)
      username="username"
      ip_address="ipaddress"
      ;;
    -yourflagname5)
      username="username"
      ip_address="ipaddress"
      ;;
    *)
      echo "Invalid option: $key"
      exit 1
      ;;
  esac
  shift
done

if [ ! -z "$username" ] && [ ! -z "$ip_address" ]; then
  echo "Connecting to Server: $ip_address with username: $username"
  ssh "$username@$ip_address"
fi
