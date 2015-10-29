FROM zans/discourse_docker_base

MAINTAINER Zenon Skuza

VOLUME /config

# Add samsaffron's configs and run
ADD /samples/standalone.yml /config

# Install Plex
#ADD install.sh /
#RUN bash /install.sh