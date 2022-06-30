#!/bin/sh
# vim:sw=4:ts=4:et
ipfs version
ipfs bootstrap rm --all
cat /tmp/bootstrap_list | ipfs bootstrap add
sleep 1

