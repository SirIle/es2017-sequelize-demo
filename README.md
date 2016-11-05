# TAW2016 Hands-on Workshop

## Setting up the workspace

Create a workspace and choose the Github project as the base. The project is
at `https://github.com/SirIle/es2017-sequelize-demo.git`.

To initialize the Cloud9 workspace use the console to run

~~~bash
scripts/init.sh
~~~

The script will ask for a password when it's decrypting the Docker Datacenter
Client bundle, you will receive the password from the instructors.

After that the Docker environment needs to be set in the shell, do that with

~~~bash
cd files && eval $(<env.sh) && cd ..
~~~

Then try `docker ps` to check that the connection to Datacenter works. You
should see some running containers listed.

## Building the example application

Building the container and running it is done with

~~~bash
npm run containers
~~~

if you want to force a rebuild, it can be done with

~~~bash
npm run containers -- --build
# or
docker-compose build
~~~

Then use your C9 username to access the application URL

~~~bash
curl -i http://$C9_USER-users.apps.containercluster.net/users/user1
~~~

That can also be used in a browser, for example [http://sirile-users.apps.containercluster.net/users/user1](http://sirile-users.apps.containercluster.net/users/user1).

## Scaling the number of containers

Scaling the containers can be done with

~~~bash
npm run scale users=3
~~~

### Stopping the containers

Containers can be stopped with

~~~bash
npm stop
~~~

The command also removes the containers.

## Running tests

Chai and mocha based tests can be run with

~~~bash
npm test
~~~

## Running test line coverage

The test line coverage reports can be run with

~~~bash
npm run coverage
~~~

After that the reports can be found from under *coverage/lcov-report* folder,
open the *index.html* with a browser/preview.

## Hands on exercises

### Code coverage

Run and check the code coverage. Check what isn't covered in the *users* service
and add a test for the missing functionality to increase the coverage.

### New field in the database

During the exercise a new field is introduced into the database. Add the field
to the model and ensure that the information is correctly relayed to the caller.

### Implement a new endpoint

A new requirement from the client arrives and they need to be able to query
users based on the first name. Add a new endpoint and functionality for the
functionality. Don't forget the tests.

## Setting up the database

This needs to be done only once as the participants are sharing the same
database instance. Under *config/sequelize.json* make sure that the IP address
of the database under the *development* is correct. After that the database
can be started and test data inserted with

~~~bash
npm run db
~~~

The test data can be reset with

~~~bash
npm run resetdb
~~~

Also a tool like Sequel Pro can be used to connect to the database. The userid
and password can be found from *config/sequelize.json*.
