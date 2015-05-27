#
# Python image
#

FROM 1science/alpine:3.1

# Install Python 7
RUN apk-install python && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    echo -ne "- with `python --version 2>&1`\n" >> /root/.built