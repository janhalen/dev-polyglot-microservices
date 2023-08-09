# Using the Data Transformation Stack

This project is a data transformation microservice that uses **Docker**, **Node-RED**, **Redis**, and **Python**. Here's a step-by-step guide on how to use the stack:

1. **Install Docker**: Make sure you have Docker installed on your system. If you don't have it installed, you can download it from the Docker website.

2. **Clone the repository**: Clone the GitHub repository containing the project files to your local machine.

3. **Start the services**: Navigate to the project directory and run `docker-compose up` to start all the services specified in the `docker-compose.yml` file.

4. **Access Node-RED**: Open a web browser and navigate to `http://localhost:1880` to access the Node-RED user interface.

5. **Publish data**: Use Node-RED to publish data to the `data` topic on the Redis microservice. The data should be in JSON format.

6. **Transform data**: The Python microservice will automatically listen for new messages on the `data` topic, transform the data using the custom transformation function, and publish the transformed data on the `results` topic. The transformation code should be placed in the `./python_queue_microservice` directory, as specified in the `docker-compose.yml` file. The provided Python source code includes an example transformation function that sorts the data alphabetically by the `name` property. This function is only an example and can be modified or replaced with a custom transformation function to meet your specific needs.

7. **Retrieve results**: Use Node-RED to subscribe to the `results` topic on the Redis microservice and retrieve the transformed data.

That's it! You can now use this stack to transform your data!
