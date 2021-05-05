FROM python:3
# Setting PYTHONUNBUFFERED to a non empty value ensures that the python output is sent straight to terminal (e.g. your container log) without being first buffered
ENV PYTHONUNBUFFERED=1
WORKDIR /app

RUN apt-get update && apt-get -y dist-upgrade
RUN apt install -y netcat

COPY requirements.txt api task manage.py /api/
RUN apt update && \
    apt install -y netcat-openbsd && \
    pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

COPY . /api

CMD ["sh", "-c", "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:$PORT"]