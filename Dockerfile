From ubuntu:18.04
Run apt-get update && \
    apt-get -y install apache2
Run echo 'Docker Container Application.' > /var/www/html/index.html

Run mkdir /webapp

Run echo '. /etc/apache2/envvars' > /webapp/run-http.sh && \
    echo 'mkdir -p /var/run/apache2' >> /webapp/run_http.sh && \
    echo 'mkdir -p /var/lock/apache2' >> /webapp/run_http.sh && \
    echo '/usr/sbin/apache2 -D FOREGROUND' >> /webapp/run_http.sh && \
    chmod 744 /webapp/run_http.sh

EXPOSE 80

CMD /webapp/run_http.sh
