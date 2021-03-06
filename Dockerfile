FROM ubuntu:16.04

RUN cd /tmp \
  && apt-get update \
  && apt-get install -y wget \
  && wget https://github.com/openshift/origin/releases/download/v1.3.2/openshift-origin-client-tools-v1.3.2-ac1d579-linux-64bit.tar.gz \
  && tar -xvzf openshift-origin-client-tools-v1.3.2-ac1d579-linux-64bit.tar.gz \
  && mv openshift-origin-client-tools-v1.3.2-ac1d579-linux-64bit/oc /usr/local/bin/ \
  && rm -rf openshift-origin-client-tools-v1.3.2-ac1d579-linux-64bit openshift-origin-client-tools-v1.3.2-ac1d579-linux-64bit.tar.gz
