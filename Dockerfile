FROM luszczynski/ansible-alpine

MAINTAINER Patrick Pötz <devops@wastebox.biz>

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
