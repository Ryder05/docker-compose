FROM gitpod/workspace-java-11
LABEL Creator="Oussema MHIRI"

USER root

#RUN bas -c "sudo apt-get install openjdk-11-jdk"
RUN sudo apt-get install unzip
RUN sudo apt install wget
RUN  cd /opt && wget https://github.com/keycloak/keycloak/releases/download/17.0.0/keycloak-17.0.0.zip && unzip keycloak-17.0.0.zip
RUN bash -c " . /home/gitpod/.sdkman/bin/sdkman-init.sh \
            &&  sdk update \
            && sdk install maven 3.6.3 "

RUN sudo chown -R gitpod:gitpod /opt/
