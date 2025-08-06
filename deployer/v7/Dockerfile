FROM dockette/php:8.3

LABEL maintainer="sulcmil@gmail.com"

ENV DEPLOYER_VERSION=7.4.0
ENV DEPLOYER_BIN=/usr/local/bin/dep

# INSTALLATION
RUN apt update && apt dist-upgrade -y && \
    # DEPENDENCIES #############################################################
    apt install -y wget curl git openssh-client rsync && \
    # DEPLOYER #################################################################
    curl -LO https://github.com/deployphp/deployer/releases/download/v${DEPLOYER_VERSION}/deployer.phar && \
    mv deployer.phar ${DEPLOYER_BIN} && \
    chmod +x ${DEPLOYER_BIN} && \
    # CLEAN UP #################################################################
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# WORKDIR
WORKDIR /srv

# COMMAND
CMD ["/usr/local/bin/dep"]
