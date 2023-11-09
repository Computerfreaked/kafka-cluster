if ! test -f /tmp/kraft-combined-logs/bootstrap.checkpoint; then
    echo 'Log storage is not formatted yet, doing now...'
    /home/kafka/bin/kafka-storage.sh format -t OGU0NzE1OTQ0ODllNDY5OG -c /home/kafka/config/kraft/server.properties
fi

/home/kafka/bin/kafka-server-start.sh /home/kafka/config/kraft/server.properties