FROM python:3.7.3-alpine3.9

MAINTAINER Richard Dally "r.dally@protonmail.com"

ADD ./*.py /app/
ADD requirements.txt /app/

WORKDIR /app
RUN pip install -r requirements.txt

CMD ["python", "/app/helloworld.py"]
