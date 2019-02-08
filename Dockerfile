From java:latest
MAINTAINER vinay v@gmaio.com
LABEL env=production
ENV apparea /data/app
RUN mkdir -p $apparea
ADD . $apparea
WORKDIR $apparea
CMD ["java","-jar","."]
