FROM zans/discourse_docker_base

MAINTAINER Zenon Skuza

# Add samsaffron's configs and run
ADD /samples/data.yml /config
ADD /samples/redis.yml /config
ADD /samples/standalone.yml /config
ADD /samples/web_only.yml /config

VOLUME /config

# Install Plex
#ADD install.sh /
#RUN bash /install.sh