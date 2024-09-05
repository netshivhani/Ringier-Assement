FROM node:12.2

#ENV HOME=/home/app
ENV FOOBAR="This is a ASSESMENT environment variable."

RUN apt-get update && apt-get install htop

COPY package.json package-lock.json $HOME/node_docker/

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

#COPY . $HOME/node_docker
COPY main.js .

EXPOSE 8080

CMD ["npm", "start"]
