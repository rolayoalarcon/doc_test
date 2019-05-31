# Most ideas come from https://stackoverflow.com/questions/54437030/how-can-i-create-a-docker-image-to-run-both-python-and-r

# See if we can do better
FROM ubuntu:latest 

#block prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install R and Python and essential dependencies
RUN apt-get update && apt-get install -y --no-install-recommends build-essential r-base python3.6 python3-pip python3-setuptools python3-dev


# Copy files
COPY ./ ./
