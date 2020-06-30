FROM registry.access.redhat.com/rhel7/support-tools

RUN yum install -y wget


CMD ["/usr/bin/bash"]