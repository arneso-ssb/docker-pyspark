# This Dockerfile installs packages for the statisticsnorway/sfreg.git
# repository, using pipenv. It can be used as is for running unit tests in
# PyCharm. If you want to run the tests manually in the container, please
# clone the repository in the /src folder and prefix the commands with
# pipenv run.

FROM python:3.8-bullseye

RUN apt-get update && apt-get install -y \
    default-jdk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src/sfreg
COPY Pipfile* /src/sfreg/

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pipenv && \
    pipenv install --dev

WORKDIR /src
RUN rm -rf sfreg
