FROM registry.access.redhat.com/rhel7/support-tools

RUN yum install -y wget yum-utils

RUN yum-config-manager --enable rhel-7-server-extras-rpms
RUN yum-config-manager --enable rhui-rhel-7-server-rhui-extras-rpms 
RUN yum-config-manager --enable rhui-rhel-7-server-rhui-rpms

RUN sudo yum install podman -y


RUN yum list installed

RUN echo "installed"

CMD ["/usr/bin/bash"]