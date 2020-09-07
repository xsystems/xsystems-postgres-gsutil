FROM postgres:12.3-alpine

RUN apk add --no-cache \
      gcc \
      libffi-dev \
      musl-dev \
      openssl-dev \
      python3-dev \
      py3-pip \
      py3-setuptools \
      py3-wheel \
 && pip install gsutil

COPY entrypoint.sh \
     init-gsutil.sh \
     /

ENTRYPOINT [ "./entrypoint.sh" ]
