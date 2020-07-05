FROM luszczynski/ansible-alpine

MAINTAINER Patrick Pötz <devops@wastebox.biz>

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && \
    wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit.tar.gz -O /tmp/oc.tar.gz && \
    cd /tmp && tar -zxvf oc.tar.gz && \
    chmod +x /tmp/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/oc && \
    mv /tmp/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/oc /usr/local/bin

ENTRYPOINT ["/entrypoint.sh"]
