FROM metamagicglobal/apache:jdk8

#RUN rm -rf /etc/apache2/apache2.conf
#RUN apt-get update
#RUN apt-get install zip unzip
#RUN apt-get install -y wget
RUN chmod -R 777 /var/www/html/
RUN mkdir /var/www/html/order/
RUN chmod -R 777  /var/www/html/order/
RUN mkdir /var/www/html/order/ui/
RUN chmod -R 777  /var/www/html/order/ui/
#RUN wget https://github.com/meta-magic/angular-micro-front-end-shoppintportal-shell/blob/tar/dist.zip?raw=true
#RUN mv dist.zip?raw=true dist.zip
#RUN unzip dist.zip
#RUN cd dist/mainshell/ && ls -la 
RUN cp -rf ../../angular-micro-front-end-shoppintportal-shell/dist/mainshell/modules-orders-module-ngfactory.js /var/www/html/order/ui/
RUN chmod -R 777  /var/www/html/order/ui/*


EXPOSE 80
