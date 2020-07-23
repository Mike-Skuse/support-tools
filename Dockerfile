FROM ubi7-minimal:7.8-ondeck

RUN sudo yum install bind-utils -y

CMD ["/usr/bin/bash"]
