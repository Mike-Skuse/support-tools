FROM registry.access.redhat.com/rhel7/rhel7


RUN yum-config-manager --enable rhel-7-server-extras-rpms
RUN yum-config-manager --enable rhui-rhel-7-server-rhui-extras-rpms 
RUN yum-config-manager --enable rhui-rhel-7-server-rhui-rpms

RUN yum install podman -y 

RUN yum list installed

RUN echo "installed"

CMD ["/usr/bin/bash"]