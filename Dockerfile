FROM registry.access.redhat.com/rhel7/rhel

RUN yum install -y wget yum-utils

RUN yum-config-manager --enable rhel-7-server-extras-rpms
RUN yum-config-manager --enable rhui-rhel-7-server-rhui-extras-rpms 
RUN yum-config-manager --enable rhui-rhel-7-server-rhui-rpms

RUN yum install podman -y --enablerepo=rhel-7-server-extras-rpms 


RUN yum list installed

RUN echo "installed"

CMD ["/usr/bin/bash"]