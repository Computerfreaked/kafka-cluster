# kafka_test



## Getting started
- Download kafka <b>binary</b> https://kafka.apache.org/downloads and place it in kafka-broker/kafka.tgz
- Build and run the cluster:  
```docker compose up --build```
- From another terminal/pc create a topic:  
```bin/kafka-topics.sh --create --topic first_test --replication-factor 3 --bootstrap-server localhost:19094```  
- Check that it is created:  
```bin/kafka-topics.sh --describe --topic first_test --bootstrap-server localhost:19094```  
- From another terminal/pc run a consumer and a producer:  
```bin/kafka-console-consumer.sh --topic first_test --from-beginning --property print.key=true --property key.separator=":" --bootstrap-server localhost:39094```  
```bin/kafka-console-producer.sh --topic first_test --property parse.key=true --property key.separator=":" --bootstrap-server localhost:29094```
- Use kcat to check the topic status:  
```kcat -b localhost:19094 -t first_test -L```  

## TODO
- check server.properties advertised.listeners. Should it include all brokers in the cluster?
- logging
- what happens if num.replicas=1 for a topic and min.insync.replicas=2. If a producer wrytes with acks=all what happens then?