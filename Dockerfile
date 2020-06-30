FROM registry.access.redhat.com/rhel7/support-tools

RUN yum install -y wget yum-utils


CMD ["/usr/bin/bash"]