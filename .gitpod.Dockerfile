FROM gitpod/workspace-full-vnc

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 19.0.2-open && \
    sdk default java 19.0.2-open"
    
RUN npm install -g generator-jhipster

RUN wget -c "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2022-03/R/eclipse-jee-2022-03-R-linux-gtk-x86_64.tar.gz" \
    -O - | tar -xpz -C $HOME/workspace
