#!/bin/sh

echo "********************************************************"
echo "Waiting for the cassandra  server to start on port 9042"
echo "********************************************************"
while ! `nc -z cassandra 9042`; do sleep 3; done
echo "*******  cassandra Server has started"

npm start
