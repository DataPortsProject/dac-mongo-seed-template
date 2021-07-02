FROM mongo:latest

COPY pythonTemplate.json /pythonTemplate.json
CMD mongoimport --uri "mongodb://mongo:27017/dataports-db" --collection pythontemplates --type json --file /pythonTemplate.json --jsonArray