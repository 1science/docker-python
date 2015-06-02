#
# Python image
#

FROM 1science/alpine:3.1

# Install Python 2.7
RUN apk-install python python-dev && \
    wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python && \
    pip install virtualenv && \
    echo -ne "- with `python --version 2>&1`" >> /root/.built
