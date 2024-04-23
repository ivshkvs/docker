FROM centos:7
RUN yum update -y && yum install -y epel-release && yum install -y nginx
COPY ./index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
