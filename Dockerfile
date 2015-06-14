#
# Python image
#

FROM 1science/alpine:3.1

# Python Version
ENV PYTHON_VERSION=2.7.9-r0

# Install Python 2.7
RUN apk-install "python=${PYTHON_VERSION}" "python-dev=${PYTHON_VERSION}" && \
    curl -LS "https://bootstrap.pypa.io/get-pip.py" | python && \
    pip install virtualenv && \
    echo -ne "- with `python --version 2>&1`\n" >> /root/.built
