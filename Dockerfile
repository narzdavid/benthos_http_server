FROM 489198589229.dkr.ecr.eu-west-1.amazonaws.com/hub/jeffail/benthos:4.2.0

COPY ./benthos /etc/benthos

ENTRYPOINT [ "/benthos" ]

RUN ls -a /etc/benthos

CMD [ "-c", "/etc/benthos/benthos.yaml", "-r", "/etc/benthos/resources.yaml", "streams", "/etc/benthos/streams/" ]
