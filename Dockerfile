# Use Amazon Corretto as the base image
FROM amazoncorretto:11

# Set the working directory
WORKDIR /app

# Download and install Mill Wrapper 0.4.9
RUN curl -L -o mill https://raw.githubusercontent.com/lefou/millw/0.4.9/millw && \
    chmod +x mill && \
    mv mill /usr/local/bin/

# Display Mill version
RUN mill --version

# Set the default command to run Mill with --help
CMD ["mill", "--help"]
