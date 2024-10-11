from kafka import KafkaProducer
import json
import time

# Initialize Kafka producer
producer = KafkaProducer(bootstrap_servers=['localhost:9092'],
                         value_serializer=lambda v: json.dumps(v).encode('utf-8'))

# Send data to Kafka topic
while True:
    data = {'transaction_id': 12345, 'amount': 100.50, 'timestamp': time.time()}
    producer.send('transactions', value=data)
    print(f"Sent: {data}")
    time.sleep(5)
