FROM centos:6

# Install Apache
RUN yum install -y httpd

# Add a hello world index.html
RUN echo Hello World! >> /var/www/html/index.html

# Add docker entrypoint
ENTRYPOINT ["httpd", "-DFOREGROUND"]
