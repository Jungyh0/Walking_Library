#!/bin/bash
JAR_PATH=$(ls /home/ec2-user/app/bookapp/build/libs/*.jar | grep -v plain | tail -1)
pkill -f 'java -jar' || true
sleep 3
nohup java -jar $JAR_PATH > /home/ec2-user/app/app.log 2>&1 &
