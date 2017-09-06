FROM i386/ubuntu

MAINTAINER jakkn <jakobknutsen@gmail.com>

RUN mkdir -p /opt/nwnserver
WORKDIR /opt/nwnserver

# Download, extract and run fix on the dedicated server files
RUN downloadDeps='wget unzip' \
    && apt update \
    && apt install -y $downloadDeps \
    && wget https://neverwintervault.org/sites/neverwintervault.org/files/project/1621/files/nwndedicatedserver1.69.zip \
    && unzip nwndedicatedserver1.69 \
    && tar xzvf linuxdedserver169.tar.gz \
    && chown -R root:root * \
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
        *.dll \
    && apt-get purge -y --auto-remove $downloadDeps $buildDeps \
    && apt-get autoremove -y \
    && apt-get clean

RUN mkdir logs.0

CMD ["./nwserver"]
