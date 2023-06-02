import os
import sys 
import json
from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def index():
    return "Welcome to BuchiBabu 🤓"

@app.route("/generate-serverless-yml", methods=["POST"])
def generate_serverless_yml():
    data = request.get_json()
    serverless_yml = generate_serverless_yml_template(data)
    return serverless_yml

def generate_serverless_yml_template(data):
    """
        Generate a serverless.yml file template from the give data.

        Args:
            data: Data from end user to be used to generate the serverless.yml file template
        
        Returns:
            The generated serverless.yml file template
    """
    serverless_yml = {
        "service": {
            "name": data["name"],
            "provider": {
                "name": "aws",
                "region": data["region"],
            },
        },
        "functions": {
            "hello": {
                "handler": "hello.handler",
                "runtime": "nodejs14.x",
            },
        },
    }

    if data["environment_variables"]:
        for environment_variable in data["environment_variables"]:
            serverless_yml["functions"]["hello"]["environment"]["{0}".format(environment_variable["name"])] = environment_variable["value"]
    
    return serverless_yml

if __name__ == "__main__":
    app.run(port=8080)
