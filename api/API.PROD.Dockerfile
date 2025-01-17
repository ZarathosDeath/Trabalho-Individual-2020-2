FROM python:3

WORKDIR /app

RUN apt-get update && apt-get -y dist-upgrade
RUN apt install -y netcat

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

CMD ["sh", "-c", "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:$PORT"]
