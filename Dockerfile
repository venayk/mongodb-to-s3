FROM mongo

MAINTAINER Vinay Kumar <vinay.kumar@fernlink.com>

RUN sed -i "s/^exit 101$/exit 0/" /usr/sbin/policy-rc.d
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install awscli
RUN apt-get install -y cron
RUN /etc/init.d/cron start

COPY mongodb-to-s3.sh /usr/bin/mongodb-to-s3

ENTRYPOINT ["/usr/bin/mongodb-to-s3"]

CMD ["cron", "0 1 * * *"]
