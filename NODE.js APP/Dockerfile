# Here I used the official Node.js image from the Docker Hub
# different option to use
#@ my work place we are using base image and images store with aws codebuild ECR
# and some of my application are using apache images stored in Jfrog repository

FROM node:14

# cd to direct
WORKDIR /usr/src/app

# Copy application files to the container
COPY server.js .

# Expose the port the app runs on
EXPOSE 8080

# Define environment variable
ENV FOOBAR "Hello, Docker!"

# Run the application
CMD ["node", "server.js"]

# I didnt do much testing due to time.