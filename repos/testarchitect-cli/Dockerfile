FROM logigear/testarchitect-cli:8.4.4 AS origin

FROM ubuntu:16.04
RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "install", "-y", "openjdk-8-jdk"]
RUN ["apt-get", "install", "-y", "nano", "less", "tree", "telnet", "net-tools"]
COPY --from=origin /etc/.testarchitect /etc/
COPY --from=origin /usr/local/logigear/testarchitect /usr/local/logigear/testarchitect
RUN ["ln", "-s", "/usr/local/logigear/testarchitect/binclient/ta.sh", "/usr/bin/ta"]
# ENV TA_TIMEOUT 10
ENV TA_EXECUTE '-help'
WORKDIR /
COPY entrypoint.sh .
CMD ["sh", "entrypoint.sh"]