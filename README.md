This is a fully production ready dockerized application that can be helpful as a template for your node/react/prisma projects. 

The frontend does not have any code, however it was more important for me to make sure the backend would work within the docker environment with Docker

Steps:

 - To dockerize the production version, run:

 ```bash
docker compose up --build
 ```

- The development version offers hot reloading. To dockerize it, run:

```bash
docker-compose -f docker-compose.dev.yml up --build
```
Backend can be reached at

```bash
http://localhost/backend/artists
```

