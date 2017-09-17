#!/bin/bash

cp -v /config/keepalived-centos7.specs /root/keepalived-build.specs

# Get source 
/usr/bin/wget https://github.com/acassen/keepalived/archive/master.zip -O \
              /root/rpmbuild/SOURCES/master.zip     

# Change release number
VERSION=$(cat /config/buildversion)
/bin/sed -i "s/BUILDVERSION/$VERSION/" /root/keepalived-build.specs 

# Build the RPM
/usr/bin/rpmbuild -ba /root/keepalived-build.specs

# Move them to mount /data
mv -v /root/rpmbuild/RPMS/x86_64/* /data/

# Clean up
rm -v /root/keepalived-build.specs
