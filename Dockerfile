FROM registry.access.redhat.com/rhel7/support-tools

RUN yum install -y podman


CMD ["/usr/bin/bash"]