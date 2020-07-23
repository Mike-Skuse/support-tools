FROM rhel7/rhel7

RUN sudo yum install bind-utils -y

CMD ["/usr/bin/bash"]
