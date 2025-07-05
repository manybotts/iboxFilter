FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y && apt install git -y

RUN groupadd -r myuser && useradd -r -g myuser myuser

COPY . /Advance-Auto-Filter
WORKDIR /Advance-Auto-Filter

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

USER myuser # Switch to non-root user

CMD ["/bin/bash", "/Advance-Auto-Filter/start.sh"]
