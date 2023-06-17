FROM ubuntu:16.04
RUN apt update -y && apt install -y build-essential tcl git curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs
WORKDIR /opt/screeps
RUN npm install --global --unsafe-perm screeps
CMD ["npx", "screeps", "start"]