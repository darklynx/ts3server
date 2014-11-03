# TeamSpeak server
# Version 1.0 (3.0.11.1 x64)

FROM ubuntu

MAINTAINER Vladimir L, vladimir_l@gmx.net

# Install wget
RUN apt-get update && apt-get install -y \
  wget

# Share the location
#VOLUME /opt/ts3

# Download and extract server to /opt/ts3
RUN mkdir -p /opt/ts3 \
  && wget -q -O - http://dl.4players.de/ts/releases/3.0.11.1/teamspeak3-server_linux-amd64-3.0.11.1.tar.gz \
  | tar -xzC /opt/ts3 --strip 1

# Expose ports
EXPOSE 9987/udp 10011 30033

CMD /opt/ts3/ts3server_minimal_runscript.sh
