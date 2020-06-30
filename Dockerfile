FROM registry.access.redhat.com/rhel7/support-tools

RUN yum install -y wget yum-utils
RUN yum-config-manager --enable rhel-7-server-extras-rpms

CMD ["/usr/bin/bash"]