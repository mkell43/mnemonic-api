FROM python:3.6.5-alpine3.7

RUN apk add --no-cache build-base linux-headers
RUN mkdir /mnemonic-api

WORKDIR /mnemonic-api

ADD api.py ./
ADD requirements.txt ./

RUN pip install -r requirements.txt

ENTRYPOINT ["hug", "-f", "api.py"]
