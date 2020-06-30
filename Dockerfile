FROM registry.access.redhat.com/rhel7/support-tools

RUN yum --enablerepo=rhel-7-server-extras-rpms
RUN yum install -y podman


CMD ["/usr/bin/bash"]