FROM ubuntu:trusty
RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  vim \
  valgrind \
  cgdb libcunit1-dev libcunit1-doc libcunit1

CMD bash
