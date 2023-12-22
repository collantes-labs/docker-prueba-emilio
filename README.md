# Docker Containers for mysql, postgre and both of them.

These containers are made for learning purposes about how docker compose works and how we can set up containers and images

## Installation

Firstly, you'll gonna need to install docker compose on your computer, you can learn how to do this on this link [https://docs.docker.com/compose/install/].

## Usage

When you have correctly installed docker compose, you can then set up the containers and images running these commands on the terminal (Make sure to be located inside the folder you want to set up when you are running these commands).

```bash
docker compose up -d --build
```

Here's a breakdown of what each part is doing:
* docker compose up: This tells docker compose to start up/run the services defined in the compose file.
* -d: The -d flag runs the containers in detached/daemon mode in the background. This detaches the container operations from your terminal session so the containers keep running even if you close the terminal.
* --build: The --build flag rebuilds any images before starting the containers if the Dockerfile or context has changed. This ensures your containers use the latest image with any changes you've made to the Dockerfile or context.

When the volume is up it will create one database called mysqldb for the mysql server, and postgresdb for the postgres server, along with two user for each, one root and another called emiliouser, both of them having the password "12345678", and both of them have equal permissions over the database.

You can use the terminal to administrate the database, if you wish to, these would be the command for each:

1. Find the container id:

```
docker ps
```

2. Exec into the container:

```
docker exec -it <container_id or name> bash
```

mysql:

```
mysql -uroot -p
```

You will have to enter the password afterwards.

postgres:

```
psql -U postgres
```

And after that you can modify the database or create new as you have to.

Alternatively, you can also use any database administrator that you want, i would recommend using dbeaver.

Here are each one of the ports of the docker containers which you can access to:

* docker-mysql: 3328
* docker-postgre: 3318
* docker-postgre-mysql:
    * mysql: 3338
    * postgre: 3348

And finally, if you ever wish to take down the image for some reason, you just have to run this command:

```bash
docker compose down
```

Here's a breakdown of what each part is doing:
* docker compose down: This tells docker compose to stop and remove the containers that were created with docker compose up.

If you also wish to take down the volume for some reason, add an -v at the end, like this:

```bash
docker compose down -v
```

Here's what it does:
* -v: The -v flag removes any volumes associated with the removed containers. Volumes are used for persistent storage of data inside a container.

## Support

If you have further questions regarding the use of docker containers you can visit the official documentation [https://docs.docker.com/].