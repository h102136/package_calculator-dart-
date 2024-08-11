FROM dart:latest

WORKDIR /app

COPY . /app

RUN apt-get update
RUN apt-get install -y apt-transport-https wget gnupg
RUN apt-get update && apt-get install -y apt-transport-https wget gnupg lcov
RUN dart pub get
CMD ["/bin/bash"]

