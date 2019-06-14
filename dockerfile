FROM python:3.7.3-alpine3.9

MAINTAINER Richard Dally "r.dally@protonmail.com"

ADD ./*.py /app/
ADD requirements.txt /app/

WORKDIR /app
RUN pip install -r requirements.txt

# Run every unit tests
CMD ["python", "-m", "unittest", "discover", "-p", "*_test.py"]

# Run Hello World program
# CMD ["python", "/app/helloworld.py"]
