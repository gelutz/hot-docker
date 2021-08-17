<center>
<h1>Typescript + docker with hot-reload</h1>
<h3>Boilerplate code for a nodejs project, with typescript</h3>
</center>

## Starting service:
### This command builds and starts the container on detached mode.
`make up`

or run

`docker-compose up -d --build`

Remove `-d` flag to see what the service is outputting.

# Dependencies

`npm` is necessary (as far as I know) because of the --only flag inside Dockerfile, which is not supported by `yarn`:

```Dockerfile
# ...
FROM production as development
RUN npm install ... --only=production
# ...
```

This flag allows me to divide the Docker build process in different steps 
separating development and production.

The build target is defined inside the `docker-compose.yml` file:

```yml
server:
    # ...
      target: development
```

---

Author: [gelutz](https://github.com/gelutz)
