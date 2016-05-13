FROM centos:7.2.1511
ADD . /angrypigs/
RUN yum -y install wget

#Install EPEL
RUN wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm && rpm -ivh epel-release-7-6.noarch.rpm

RUN yum -y install python-pip

WORKDIR /angrypigs/

#Install python dependencies
RUN pip install -r requirements.txt

EXPOSE 5000:5000
CMD python /angrypigs/api.py
