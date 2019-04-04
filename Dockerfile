FROM centos:latest


RUN yum update -y && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel

ADD provisions/kafka_2.12-2.0.0.tgz /home/work/
RUN chmod +x /home/work/kafka_2.12-2.0.0/bin/*.sh
ENV PATH="/home/work/kafka_2.12-2.0.0/bin":${PATH}

ENTRYPOINT ["/bin/bash"]