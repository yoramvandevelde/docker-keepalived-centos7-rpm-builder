# keepalived for CentOS7 RPM builder
[![Build Status](https://travis-ci.org/yoramvandevelde/docker-keepalived-centos7-rpm-builder.svg?branch=master)](https://travis-ci.org/yoramvandevelde/docker-keepalived-centos7-rpm-builder)
Build it:
```
docker build -t .
```

Run it:
```
docker run -ti --rm -v $PWD/data:/data -v $PWD/assets/config:/config keepalived-centos7-rpm-builder:latest start.sh
```

Find the RPM's in de data folder:
```
$ ls data/ 
keepalived-3.5.1-909.el7.centos.x86_64.rpm  
keepalived-debuginfo-3.5.1-909.el7.centos.x86_64.rpm
```
