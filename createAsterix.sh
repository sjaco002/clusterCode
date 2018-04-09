#!/bin/bash
#kill `jps | egrep '(CDriver|NCService|NCDriver)' | awk '{print $1}'`
#ssh technetium "kill `jps | egrep '(CDriver|NCService|NCDriver)' | awk '{print $1}'` && asterix/bin/asterixncservice > /var/asterixdb/logs/service.log 2<&1 &"
#asterix/opt/ansible/bin/stop.sh
#asterix/opt/ansible/bin/erase.sh
#rm -rf /var/asterixdb/logs/*
#rm -rf /var/asterixdb/logs/*
#r#m -rf /home/sjacobs/asterixdb/logs/*
#rm -rf /tmp/asterixdb
#rm -rf asterix
./destroy.sh
#TODO need to resend the binary to ncs when we get a new version
unzip asterix-server-0.9.4-SNAPSHOT-binary-assembly.zip -d asterix
rm asterix/opt/ansible/conf/cc.conf
cp cc.conf asterix/opt/ansible/conf/.
#TODO need to rezip with these to use twitter stuff (like in two)
#cp twitter4j-core-4.0.4.jar asterix/repo/.
#cp twitter4j-stream-4.0.4.jar asterix/repo/.
rm asterix/opt/ansible/conf/inventory
cp inventory asterix/opt/ansible/conf/.
asterix/opt/ansible/bin/deploy.sh
asterix/opt/ansible/bin/start.sh

