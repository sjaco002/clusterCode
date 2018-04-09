#!/bin/bash
asterix/opt/ansible/bin/stop.sh
asterix/opt/ansible/bin/erase.sh
rm -rf /tmp/asterixdb
rm -rf asterix
ssh technetium './destroy.sh'
ssh astatine './destroy.sh'
