# dockerfile-cheatsheet

This table provides a cheatsheet for building Dockerfiles, including the command, description, and an example for each command. You can use this table as a reference when creating your Dockerfile.

| Command | Description | Example |
|---------|-------------|---------|
| FROM | Specifies the base image for the build stage | `FROM node:14` |
| RUN | Executes a command during build time | `RUN npm install` |
| CMD | Specifies the command to run when the container starts | `CMD ["node", "app.js"]` |
| COPY | Copies files from the host to the container | `COPY app.js /usr/src/app/` |
| WORKDIR | Sets the working directory for subsequent commands | `WORKDIR /app` |
| EXPOSE | Exposes a port on the container | `EXPOSE 8080` |
| ENV | Sets environment variables | `ENV NODE_ENV=production` |
| ENTRYPOINT | Defines the entry point for the container | `ENTRYPOINT ["npm", "start"]` |
| VOLUME | Creates a mount point and marks it as a volume | `VOLUME /data` |
| USER | Sets the user for the container | `USER node` |
| LABEL | Adds metadata to an image | `LABEL version="1.0"` |
| HEALTHCHECK | Defines a command to check the container's health | `HEALTHCHECK --interval=30s CMD curl -f http://localhost/ || exit 1` |
| ARG | Defines a build-time argument | `ARG NODE_ENV=development` |
| SHELL | Sets the default shell for the container | `SHELL ["/bin/bash", "-c"]` |
| NETWORK | Creates a network for the container | `NETWORK my-network` |
| --link | Links containers together | `--link db-container:db` |
| --hostname | Sets the container's hostname | `--hostname my-container` |
| --domainname | Sets the container's domain name | `--domainname example.com` |
| --ip | Sets the container's IP address | `--ip 172.18.0.2` |
| --mac-address | Sets the container's MAC address | `--mac-address 02:42:ac:11:00:02` |

