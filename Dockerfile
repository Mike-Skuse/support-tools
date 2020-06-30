FROM registry.access.redhat.com/rhel7/rhel

RUN subscription-manager repos --enable rhel-7-server-extras-rpms
RUN subscription-manager repos --enable rhui-rhel-7-server-rhui-extras-rpms 
RUN subscription-manager repos --enable rhui-rhel-7-server-rhui-rpms

RUN yum install podman -y


RUN yum list installed

RUN echo "installed"

CMD ["/usr/bin/bash"]