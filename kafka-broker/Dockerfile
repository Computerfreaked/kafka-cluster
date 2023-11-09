FROM eclipse-temurin:21-jre-alpine

RUN apk update
RUN apk add tar

RUN adduser --disabled-password --gecos "" kafka

COPY config_and_start.sh /home/kafka
RUN chmod +x /home/kafka/config_and_start.sh

COPY kafka.tgz /home/kafka/
RUN tar -xzf /home/kafka/kafka.tgz --strip=1 --owner=kafka --group=kafka -C /home/kafka
RUN rm /home/kafka/kafka.tgz

# will be volume mounted with specific config for each broker
RUN rm -R /home/kafka/config/*

USER kafka
CMD /home/kafka/config_and_start.sh
