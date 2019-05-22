#!/bin/bash

set -euo pipefail

sleep 10

case "$(hostname)" in
worker-0)
worker-1)
worker-2)
  ;;
*)
  route add -net 10.200.0.0/24 gw 192.168.199.20
  route add -net 10.200.1.0/24 gw 192.168.199.21
  route add -net 10.200.2.0/24 gw 192.168.199.22
  ;;
esac
