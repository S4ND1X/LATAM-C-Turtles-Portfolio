FROM python:3.8-slim-buster

RUN mkdir/myportafolio
COPY requirements.txt /myportafolio
WORKDIR /myportafolio
RUN pip3 install -r requirements.txt

COPY . /myportafolio

CMD ["gunicorn", "wsgi:app", "-w 4", "-b 0.0.0.0:80"]

