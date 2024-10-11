from pyspark.sql import SparkSession
from pyspark.sql.functions import from_json, col
from pyspark.sql.types import StructType, StringType, FloatType

# Initialize Spark session
spark = SparkSession.builder.appName('KafkaSparkStreaming').getOrCreate()

# Define schema for incoming data
schema = StructType().add("transaction_id", StringType()) \
                     .add("amount", FloatType()) \
                     .add("timestamp", StringType())

# Read streaming data from Kafka
df = spark.readStream \
    .format('kafka') \
    .option('kafka.bootstrap.servers', 'localhost:9092') \
    .option('subscribe', 'transactions') \
    .load()

# Convert Kafka value from binary to JSON
df = df.selectExpr("CAST(value AS STRING)") \
       .select(from_json(col('value'), schema).alias('data')) \
       .select('data.*')

# Write stream to console (or to another sink like NoSQL database)
query = df.writeStream.outputMode('append').format('console').start()
query.awaitTermination()
