# Save the Dockerfile and then build the image using the docker build command.
# For example:
    # docker build -t my-nginx .
# This will create a new Docker image called "my-nginx" with NGINX installed
# on a Debian-based base image and configured to support TLSv1.2 or TLSv1.3 only.
# You can then use the docker run command to start a new container based on this image.
    #docker run -d -p 80:80 my-nginx
# This will start a new container and expose it on port 80 of your host machine.

# This Dockerfile is used to build a Docker image that contains an installation of Nginx web server.
# It sets up an Nginx web server with SSL support in a Docker container. When the Docker
# image built using this Dockerfile is run, it will start an Nginx server that listens for HTTPS connections on
# port 443.

# The image is based on the latest version of Debian operating system.
FROM debian:latest
# The image is based on the Debian Buster operating system.
# FROM debian:buster

# Install Nginx and OpenSSL on the Debian system using the apt-get command.
# The apt-get update and apt-get upgrade commands are used to update the list of available packages and upgrade any
# installed packages to their latest versions, respectively. The apt-get install -y nginx openssl command installs
# the Nginx web server and OpenSSL library.
RUN     apt-get update -y && apt-get upgrade -y && apt-get install -y nginx openssl

# The COPY command copies the conf file from the host machine into the root directory (/) of the container.
COPY    conf/nginx.conf /

# The mv command then moves this file to the directory, which is the default location
# for Nginx configuration files.
RUN     mv nginx.conf path_to_default_conf
# Configure NGINX to support TLSv1.2 or TLSv1.3 only. To do this, you can use the ssl_protocols directive in the NGINX
# configuration file. Add the following line to your Dockerfile to enable TLSv1.2 or TLSv1.3 only:
RUN     sed -i 's/ssl_protocols.*/ssl_protocols TLSv1.2 TLSv1.3;/' /etc/nginx/nginx.conf

# Use OpenSSL to generate a private key, a certificate signing request (CSR), and a self-signed
# SSL certificate. These are used to enable secure HTTPS connections to the Nginx server. The generated files are
# then moved to the appropriate directories for use by Nginx.
# SSL protokolü bütün yaygın web sunucuları (server) ve tarayıcıları (browser) tarafından desteklenen bir protokoldür.
# SSL, standart bir algoritmadır. Milyonlarca web sitesinde güvenli veri iletişimi için kullanılmaktadır. SSL fonksiyonun 
# çalışabilmesi için sunucu tarafında bir anahtar (private key) ve istemci tarafında çalışacak bir sertifikaya (Public Key)
# ihtiyaç duyulmaktadır. https://www.hosting.com.tr/bilgi-bankasi/ssl-nedir-nasil-calisir/
# https://www.gokhankesici.com/openssl/
RUN     openssl ......

# The EXPOSE command specifies that the container listens on port 443, which is the default port for HTTPS connections.
EXPOSE 443

# The ENTRYPOINT command specifies the command that should be run when the container is started. In this case,
# it runs the nginx command with the -g and daemon off; arguments, which cause Nginx to run in the foreground
# and not fork into the background as a daemon process. This allows the container to stay active as long as Nginx
# is running.
ENTRYPOINT     ["nginx", "-g", "daemon off;"]