FROM amazon/aws-cli

RUN yum update -y \
 && yum install -y bind-utils

ADD dynamip .

ENV AWS_DEFAULT_OUTPUT=text

ENTRYPOINT []
CMD ./dynamip
