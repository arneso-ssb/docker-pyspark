# docker-pyspark
Docker image for running local pyspark unit tests in PyCharm

This Dockerfile installs packages for the statisticsnorway/sfreg.git
repository, using pipenv. It can be used as is for running unit tests in
PyCharm. If you want to run the tests manually in the container, please
clone the repository in the /src folder and prefix the commands with
pipenv run.
