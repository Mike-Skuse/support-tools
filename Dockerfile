FROM registry.redhat.io/ubi7/ubi

RUN yum install bind-utils -y

CMD ["/usr/bin/bash"]
