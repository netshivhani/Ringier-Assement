Running the application
The application is built with Node.js and already has all environment configured with docker. To start the application you will need docker and docker-compose installed on the machine. Having that you may run:

docker-compose up
And then the application will be started:

Starting nodedocker_app_1 ...
Starting nodedocker_app_1 ... done
The application will be avaible on PORT 3000 by default, but it's configurable via docker-compose.yml file as an environment variable.

Running the application in development mode
Sometimes you would like to run the application in development mode. This project already has a prepared enviroment for that, you have to run:

docker-compose -f docker-compose.development.yml up
This docker compose file will start the application using nodemon and will share the local application code with the container. Any change on the hosts code will restart the application (whitout restarting the container because nodemon is taking care of that).

Running the tests
To run the tests using docker you just have to run the following command:

docker-compose -f docker-compose.test.yml up
And then all tests will be ran and the status exit code will be 0 or 1 that means true or false.
