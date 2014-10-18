FROM ubuntu:14.04
MAINTAINER Hamed Abdollahpour <ha.hamed@gmail.com>
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get install -y wget
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz
RUN tar xvzf jdk-8u25-linux-x64.tar.gz
RUN mkdir /usr/lib/jvm
RUN mv jdk1.8.0_25/ /usr/lib/jvm/
RUN ln -s /usr/lib/jvm/jdk1.8.0_25/ /usr/lib/jvm/jdk1.8
ENV JAVA_HOME /usr/lib/jvm/jdk1.8
ENV JDK_HOME $JAVA_HOME
ENV PATH $JAVA_HOME/bin:$PATH
