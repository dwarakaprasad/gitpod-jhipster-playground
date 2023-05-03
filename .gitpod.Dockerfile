FROM gitpod/workspace-full-vnc

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 19.0.2-open && \
    sdk default java 19.0.2-open"

RUN nvm install 16.20.0

RUN npm install -g generator-jhipster

RUN mkdir /workspace/downloads && mkdir /workspace/tools

RUN cd /workspace/downloads && \
    wget -c http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2022-03/R/eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz

RUN cd /workspace/downloads && \
    tar -xvf download.php\?file\=%2Ftechnology%2Fepp%2Fdownloads%2Frelease%2F2022-03%2FR%2Feclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz --directory /workspace/tools/
