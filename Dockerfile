FROM amazon/aws-cli

RUN yum update -y \
 && yum install -y bind-utils \
 && yum clean all

ADD dynamip .

ENV AWS_DEFAULT_OUTPUT=text

ENTRYPOINT []
CMD ./dynamip
