FROM python:2.7
WORKDIR /application
RUN apt update
RUN python -m virtualenv venv
ENV FLASK_ENV production
ENV FLASK_APP run.py
COPY ./application/requirements .
RUN pip install -r requirements
COPY . .
ENTRYPOINT ["/usr/local/bin/flask", "run", "--host=0.0.0.0"]


