FROM nginx:stable-alpine-slim
EXPOSE 8080
COPY ./alphaama /usr/share/nginx/html

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
