FROM registry.access.redhat.com/rhel7/support-tools

RUN yum install rhel-7-server-extras-rpms rhel-7-server-optional-rpms

RUN yum install -y podman


CMD ["/usr/bin/bash"]