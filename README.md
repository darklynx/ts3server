TeamSpeak3 server
=========

`Dockerfile` to build TeamSpeak3 server image.

To build a docker image use following command:

    > sudo docker build -t="myuser/teamspeak3:3.0.12.2" .

To run an instance of TeamSpeak3 server use:

    > sudo docker run --name ts3 -d -p 9987:9987/udp myuser/teamspeak3:3.0.12.2
    > sudo docker logs ts3

The second command will print out the log of TeamSpeak3 server initialization.
This contains information about ServerAdmin privilege key and Server Query Admin Account.
