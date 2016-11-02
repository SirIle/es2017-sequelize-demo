# TAW2016 Hands-on Workshop

## Getting started

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

## Things to do

TODO:
-   Configure the participant name based things, like database name and image & container name
-   Figure out a good hands-on change to the application
