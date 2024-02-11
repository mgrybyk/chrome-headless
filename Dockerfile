ARG JDK_MAVEN_NODE=jdk17-nodelts

FROM atools/jdk-maven-node:${JDK_MAVEN_NODE}
USER root


# install latest stable chrome
ARG CHROME_VERSION="google-chrome-stable"
RUN \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update -qqy && \
    apt-get install -qqy dbus-x11 ${CHROME_VERSION:-google-chrome-stable} && \
    rm -f /etc/apt/sources.list.d/google-chrome.list && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN echo "" && echo "chrome-headless IS DEPRECATED!" && echo ""

# "fake" dbus address to prevent errors
# https://github.com/SeleniumHQ/docker-selenium/issues/87
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null
