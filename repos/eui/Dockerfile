FROM centos/nodejs-10-centos7:latest

RUN ["/bin/bash", "-c", "npm install yarn -g"]

ADD eui-20.0.1.tar /opt
WORKDIR /opt/eui-20.0.1

RUN ["/bin/bash", "-c", "npm install"]
RUN ["/bin/bash", "-c", "yarn"]

EXPOSE 8030

ENTRYPOINT [ "/bin/bash", "-c", "yarn start" ]
