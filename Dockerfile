FROM ubi7-minimal:7.8-ondeck

LABEL com.redhat.component="support-tools-container"
LABEL name="rhel7/support-tools"
LABEL version="7.8"
LABEL maintainer="Red Hat, Inc."
LABEL usage="atomic run rhel7/support-tools"

LABEL run="docker run -it --name NAME --privileged --ipc=host --net=host --pid=host -e HOST=/host -e NAME=NAME -e IMAGE=IMAGE -v /run:/run -v /var/log:/var/log -v /etc/machine-id:/etc/machine-id -v /etc/localtime:/etc/localtime -v /:/host IMAGE"

#labels for container catalog
LABEL summary="A set of tools to analyze the host system."
LABEL description="The Red Hat Enterprise Linux Support Tools image contains tools to analyze the host system including sosreport, strace, and tcpdump."
LABEL io.k8s.description="The Red Hat Enterprise Linux Support Tools image contains tools to analyze the host system including sosreport, strace, and tcpdump."
LABEL io.k8s.display-name="Red Hat Enterprise Linux Support Tools"
LABEL io.openshift.tags="sosreport, support"
LABEL io.openshift.expose-services=""


RUN INSTALL_PKGS="yum sos sos-collector redhat-support-tool strace tcpdump vim-minimal less" && \
    microdnf -y install $INSTALL_PKGS && \
    rpm -V --nosize --nofiledigest --nomtime $INSTALL_PKGS && \
    microdnf clean all && \
    rm -rf /usr/local/man

CMD ["/usr/bin/bash"]
