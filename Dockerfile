FROM zans/discourse_docker_base

MAINTAINER Zenon Skuza

# Add samsaffron's configs and run
ADD /samples/standalone.yml /app.yml

# Install Plex
#ADD install.sh /
#RUN bash /install.sh