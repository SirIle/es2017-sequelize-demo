# TAW2016 Hands-on Workshop

## Getting started

Create a workspace and choose the Github project as the base. The project should
be at `https://github.com/SirIle/es2017-sequelize-demo.git`.

To initialize the Cloud9 workspace run

~~~bash
scripts/init.sh
~~~

The script will ask for a password when it's decrypting the Docker Datacenter
Client bundle, you will receive the password from the instructors.

I'll add the commands below as I explore how the script should work

~~~bash
wget https://get.docker.com/builds/Linux/x86_64/docker-1.11.0.tgz -O /tmp/docker-client.tgz
tar xzf /tmp/docker-client.tgz
sudo ln -s $PWD/docker/docker /usr/local/bin/docker
cd files
unzip ucp-bundle.zip # Enter the password
cd ucp-bundle-admin-containerclusternet/
eval $(<env.sh)
npm update -g npm
~~~

## Things to do

TODO:
-   Ask for the participant identifier at the start of the script, make an env variable of it?
-   Install Docker client (from [here](https://get.docker.com/builds/Linux/x86_64/docker-1.11.0.tgz​​​))
-   Unzip and decrypt the client bundle (asking for password)
-   Configure the participant name based things, like database name and image & container name
-   Figure out a good hands-on change to the application
