# start the Kafka broker with the new docker compose command
docker compose up -d

# Create Topic
# Events in Kafka are organized and durably stored in named topics.
# Topics have parameters that determine the performance and durability guarantees of the events that flow through them.
# Create a new topic, purchases, which we will use to produce and consume events.
# We'll use the kafka-topics command located inside the local running Kafka broker:
docker compose exec broker \
  kafka-topics --create \
    --topic purchases \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1


