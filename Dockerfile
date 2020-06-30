FROM registry.access.redhat.com/rhel7/rhel




RUN yum install podman -y 

RUN yum list installed

RUN echo "installed"

CMD ["/usr/bin/bash"]