FROM ubuntu

WORKDIR /code
# #install curl
RUN apt update \
&& apt install curl -y

#install https://github.com/cdr/code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

#install basic stuff for python
RUN apt install software-properties-common -y\ 
&& add-apt-repository ppa:deadsnakes/ppa \
&& apt update \
&& apt install python3.8 -y\
#install pip
&& apt install python3-pip -y

#config file
COPY config.yml ~/.config/code-server/config.yaml
COPY ./settings.json /root/.local/share/code-server/User/settings.json
#copying local ~/.vscode [OPTIONAL]
# COPY ~/.vscode ~/.local/share/code-server

#copy code content
COPY ./code .

#run code-server
CMD code-server --bind-addr=0.0.0.0:8443 --disable-telemetry .
 
EXPOSE 8443