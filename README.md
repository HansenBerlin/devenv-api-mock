# Mock API with Swagger and Docker 
## Prerequisites
- Docker installed
- Docker compose installed
- Git installed

## Usage
### Setup
- execute ```https://github.com/HansenBerlin/devenv-api-mock``` from within in a directory where the project should be copied to
- execute ```cd devenv-api-mock``` to change to the repositories directory. docker-compose commands in step 3 and 5 won't work when executed from another directory, because it's looking for a docker-compose.yml file. To make sure you are in the correct directory when executing ```ls``` you chould see a docker-compose.yml file.
- execute ```docker-compose up -d``` to create a virtual network and run the service witin this network
- open localhost:10000 in your browser to test the mocked API
- run ```docker-compose down``` within the same directory to teardown the service and network.
### Customization
- the YAML schema file in /doc is mounted by docker. Within this file all endpoints and responses are defined. You can change the content of the file on the host system and see the changes immediatly after refreshing the service in your browser. 
- you could also add more files in this directory to test another API. Examples are provided [here](https://github.com/OAI/OpenAPI-Specification/tree/main/examples/v3.0). Just change the file name in the docker compose file from swagger.yaml to whatever your new file is called and execute ```docker-compose up -d``` again. You can also to create your custom yaml file, use [this](https://editor.swagger.io) or [this](https://editor-next.swagger.io) onlineeditor or any local tool. VS Code has a good [extension](https://marketplace.visualstudio.com/items?itemName=42Crunch.vscode-openapi)
- if you want to run the api under a different port you can change this in the docker compose file as well. Keep the mapping to 8080 (internal docker port) and change 10000 to whatever you prefer and execute ```docker-compose up -d```.

## Integration
This mocked API is used by the demo service (Link) in this repository.
