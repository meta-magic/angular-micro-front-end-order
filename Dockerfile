FROM metamagicglobal/apache:jdk8

#RUN rm -rf /etc/apache2/apache2.conf

RUN chmod -R 777 /var/www/html/
RUN mkdir /var/www/html/order/
RUN chmod -R 777  /var/www/html/order/
RUN mkdir /var/www/html/order/ui/
RUN chmod -R 777  /var/www/html/order/ui/
ADD dist/orders/modules-orders-module-ngfactory.js /var/www/html/order/ui/

EXPOSE 80
