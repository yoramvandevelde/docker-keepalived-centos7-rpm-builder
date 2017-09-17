FROM centos:centos7
LABEL version="1.0.0" \
      maintainer="Yoram van de Velde <yoram@provider.nl>"

USER root

# Update repos and install needed packages
RUN yum -y update && \
    yum clean all && \
    yum -y install openssl-devel libnl3-devel \
                   net-snmp-devel libnfnetlink-devel \
                   gcc make wget rpm-build

# Make directory structure rpmbuild uses and adds /data
RUN /bin/mkdir -pv /root/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}/ /data /config

# Copy the build script
COPY /assets/bin/start.sh /bin/start.sh
RUN chmod +x /bin/start.sh
