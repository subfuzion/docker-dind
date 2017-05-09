FROM docker:17.05.0-ce-dind
RUN apk --no-cache add iproute2 bind-tools drill
ENV DOCKER_HIDE_LEGACY_COMMANDS=1
ENTRYPOINT ["dockerd-entrypoint.sh", "--experimental"]
CMD []

