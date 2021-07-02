FROM python:3.6.14-slim-buster

RUN apt-get update && apt-get install -y \
  vim \
  awscli \
  twine \
  jq

ENV PATH="${PATH}:/root/.local/bin/"

WORKDIR /aws-amicleaner
ADD . .
RUN python setup.py install
ENTRYPOINT ["amicleaner"]
