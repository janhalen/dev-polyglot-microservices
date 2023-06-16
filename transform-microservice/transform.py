from flask import Flask, request
import json
import pandas as pd

app = Flask(__name__)

# Define a route for the /transform endpoint that accepts POST requests
@app.route('/transform', methods=['POST'])
def transform():
    # Get the JSON data from the request
    data = request.get_json()
    # Add your custom data transformations here
    df = pd.DataFrame(data, index=[0])
    transformed_data = '(' + ', '.join(df.iloc[0].astype(str)) + ')'
    # Return the transformed data as a JSON string
    return json.dumps(transformed_data)

# Run the Flask app on host 0.0.0.0 (accessible from any IP address)
if __name__ == '__main__':
    app.run(host='0.0.0.0')
