# TeamSpeak server
# Version 1.3 (3.3.1 x64)

FROM ubuntu

MAINTAINER Vladimir L, vladimir_l@gmx.net

# Install wget
RUN apt-get update && apt-get install -y wget bzip2

# Create a volume for ts3 server (uncomment if backups are required)
#VOLUME /opt/ts3

# Download and extract server to /opt/ts3
RUN mkdir -p /opt/ts3 \
  && wget -q -O - http://dl.4players.de/ts/releases/3.3.1/teamspeak3-server_linux_amd64-3.3.1.tar.bz2 \
  | tar -xjC /opt/ts3 --strip 1 \
  && touch /opt/ts3/.ts3server_license_accepted

# Expose ports
EXPOSE 9987/udp 10011 30033

CMD /opt/ts3/ts3server_minimal_runscript.sh
