FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y && apt install git -y

RUN groupadd -r myuser && useradd -r -g myuser myuser

COPY . /Advance-Auto-Filter # Adjust if your project directory is different
WORKDIR /Advance-Auto-Filter
RUN chown -R myuser:myuser /Advance-Auto-Filter

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

USER myuser

CMD ["/bin/bash", "/start.sh"] # Or /Advance-Auto-Filter/start.sh if needed
