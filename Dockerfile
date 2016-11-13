FROM m0elnx/ubuntu-32bit

MAINTAINER jakkn <jakobknutsen@gmail.com>

RUN mkdir -p /opt/nwnserver
WORKDIR /opt/nwnserver

# Download, extract and run fix on the dedicated server files
RUN wget https://neverwintervault.org/sites/neverwintervault.org/files/project/1621/files/nwndedicatedserver1.69.zip \
    && unzip nwndedicatedserver1.69 \
    && tar xzvf linuxdedserver169.tar.gz \
    && chmod -R ug+w * \
    && chmod ug+x fixinstall \
    && ./fixinstall \
    && rm -r nwndedicatedserver1.69.zip \
        linuxdedserver169.tar.gz \
        data \
        nwm \
        utils \
        modules \
        fixinstall \
        *mac* \
        *.exe \
        *.dll

RUN mkdir logs.0

CMD ["./nwserver.sh"]
