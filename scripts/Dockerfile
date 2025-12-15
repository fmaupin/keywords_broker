FROM rabbitmq:4.1.4-management

# Installer curl
USER root
RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/* \
    # activer le plugin prometheus
    && rabbitmq-plugins enable --offline rabbitmq_prometheus

COPY rabbitmq.config /etc/rabbitmq/

# definitions for profile development
COPY definitions-dev.json /etc/rabbitmq/definitions.json

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config  /etc/rabbitmq/definitions.json

CMD ["rabbitmq-server"]
