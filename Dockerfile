#
# Python image
#

FROM 1science/alpine:3.1

# Install Python 7
WORKDIR /usr/lib/jvm
RUN apk-install python && \
    echo -ne "- with `python --version 2>&1 | awk 'NR == 2'`\n" >> /root/.built
