# Use a base image
FROM alpine:latest AS base
FROM base AS intermediate

# Set environment variables
ENV APP_HOME /app
ENV APP_ENV production

# Create a directory and set it as the working directory
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# Copy files into the container
COPY . $APP_HOME
COPY README.md $APP_HOME/README.md

# Add labels to the image
LABEL maintainer="your-email@example.com"
LABEL version="1.0"

# Expose a port
EXPOSE 8080
EXPOSE 9090

# Define a volume
VOLUME ["/data"]
VOLUME ["/config"]

# Set default command
CMD ["echo", "Hello, World!"]
CMD ["cat", "$APP_HOME/README.md"]

# Add an entrypoint
ENTRYPOINT ["echo", "Starting the application..."]
ENTRYPOINT ["cat", "$APP_HOME/README.md"]

# Specify a health check
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost/ || exit 1
HEALTHCHECK --interval=60s --timeout=3s CMD curl -f http://localhost/health || exit 1

# Add arguments
ARG VERSION=1.0
ARG BUILD_DATE

# Set user
USER root
USER nobody

# Define a stop signal
STOPSIGNAL SIGTERM
STOPSIGNAL SIGKILL

# Add onbuild instructions
ONBUILD RUN echo "This is an onbuild instruction"
ONBUILD COPY . /onbuild

# Define a shell form
SHELL ["/bin/bash", "-c"]
SHELL ["/bin/sh", "-c"]