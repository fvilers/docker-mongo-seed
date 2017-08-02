# docker-mongo-seed
A Docker image to seed a Mongo database

# How to use
- Create a docker-compose file and add a `mongo-seed` service.
- Set the environment variables `MONGO_HOST`and `MONGO_PORT` accordingly to you stack.
- Eventually, set the a volume to share files you want to use
- Add a command to import your data

# Sample docker-compose.yml
Assuming the presence of a `people.json` file inside a local `data` directory.
```
version: '3'

services:
  mongo-seed:
    image: fvilers/mongo-seed
    environment:
      - MONGO_HOST=mongo
      - MONGO_PORT=27017
    volumes:
      - ./data:/data
    command:
      "mongoimport --host mongo --port 27017 --db test --mode upsert --type json --file /data/people.json --jsonArray"

  mongo:
    image: mongo:3.4

```
