FROM registry.access.redhat.com/rhel7/support-tools

RUN INSTALL_PKGS="yum yum-plugin-copr podman" && \
    microdnf -y install $INSTALL_PKGS && \
    rpm -V --nosize --nofiledigest --nomtime $INSTALL_PKGS && \
    microdnf clean all && \
    rm -rf /usr/local/man


CMD ["/usr/bin/bash"]