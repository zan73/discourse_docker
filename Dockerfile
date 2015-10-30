FROM zans/discourse_docker_base

MAINTAINER Zenon Skuza

# Add samsaffron's configs and run
RUN mkdir /config
RUN mkdir /config/samples
RUN mdkir /config/templates

ADD /samples/data.yml /config/samples
ADD /samples/redis.yml /config/samples
ADD /samples/standalone.yml /config/samples
ADD /samples/web_only.yml /config/samples

ADD /templates/cloudflare.template.yml /config/templates
ADD /templates/cron.template.yml /config/templates
ADD /templates/fastly.template.yml /config/templates
ADD /templates/postgres.9.2.template.yml /config/templates
ADD /templates/postgres.template.yml /config/templates
ADD /templates/redis.template.yml /config/templates
ADD /templates/sshd.template.yml /config/templates
ADD /templates/syslog.template.yml /config/templates
ADD /templates/web.china.template.yml /config/templates
ADD /templates/web.ratelimited.template.yml /config/templates
ADD /templates/web.socketed.template.yml /config/templates
ADD /templates/web.ssl.template.yml /config/templates
ADD /templates/web.template.yml /config/templates

ADD /launcher /

VOLUME /config

# Install Plex
#ADD install.sh /
#RUN bash /install.sh