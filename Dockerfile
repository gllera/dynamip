FROM python:alpine

ENV AWS_DEFAULT_OUTPUT=text

RUN apk add --no-cache less groff bind-tools \
 && pip install --no-cache-dir awscli

ADD dynamip .

CMD ./dynamip
