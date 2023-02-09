FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk
RUN apt install tomcat9
RUN apt install maven
RUN apt install git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN boxfuse run target/hello-1.0.war


#RUN apt install nginx -y
#EXPOSE 80
#RUN rm -rf /var/www/html/*
#ADD index.html /var/www/html/
#CMD ["nginx", "-g", "daemon off;"]