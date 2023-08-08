import json
import redis
import time

# Connect to the Redis server
r = redis.Redis()

# Subscribe to the "data" topic
p = r.pubsub()
p.subscribe('data')

def transform(data):
    # Parse the JSON data
    data = json.loads(data)

    # Transform the data into an array
    array = list(data.values())

    # Return the transformed data
    return array

# Listen for new messages
while True:
    # Get a new message if one is available
    message = p.get_message()

    # If no message is available, sleep for a short time and try again
    if not message:
        time.sleep(0.001)
        continue

    # Ignore non-data messages
    if message['type'] != 'message':
        continue

    # Transform the data
    transformed_data = transform(message['data'])

    # Return the transformed data on the "results" topic
    r.publish('results', json.dumps(transformed_data))