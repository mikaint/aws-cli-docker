FROM alpine:3.10.1

RUN apk add --update py-pip groff

RUN pip install awscli --upgrade --user

ENV PATH /root/.local/bin:$PATH

ENTRYPOINT ["aws"]

CMD ["--version"]
