#
# Python image with Consul Template and S6
#

FROM 1science/python:2.7

# Install S6 Overlay and Consul Template
ENV S6_OVERLAY_VERSION=1.18.1.5 CONSUL_TEMPLATE_VERSION=0.15.0

# Install S6 Overlay, Consul Template
RUN curl -Ls https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar -xz -C /

RUN curl -Ls https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -o consul-template.zip && \
    unzip consul-template.zip -d /usr/local/bin && \
    rm -f consul-template* && \
    echo -ne "- with `consul-template -v 2>&1`\n" >> /root/.built

# Add services configuration
COPY etc /etc

ENTRYPOINT ["/init"]