FROM rabbitmq:4.1.4-management

COPY rabbitmq.config /etc/rabbitmq/

# definitions for profile development
COPY definitions-dev.json /etc/rabbitmq/definitions.json

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config  /etc/rabbitmq/definitions.json

CMD ["rabbitmq-server"]
