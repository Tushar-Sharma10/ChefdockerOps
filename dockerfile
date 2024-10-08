# USING LTS VERSION OF NODE
FROM node:18

#LABELLING THE MAINTAINER
LABEL maintainer="tusharsharma.techsavvy@gmail.com"

# IINSTALLING HTTP-SERVER TO SERVE FILES
RUN npm install -g http-server

#SETTING WORKING DIRECTORY
WORKDIR /app

#COPYING THE CODE FOR THE CONTAINER 
COPY codingfiles/ /app/

#EXPOSING PORT FOR ACCESS
EXPOSE 8080

#COMMAND TO RUN
CMD ["http-server","-p","8080"]
