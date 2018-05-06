# wq2a-app-backend
virtualenv env
pip freeze > requirements.txt
<VirtualHost *:80>
    ServerName appapi.wq2a.com
    WSGIDaemonProcess appapi python-path=/var/www/wq2a-app-backend/modules:/var/www/wq2a-app-backend/env/lib/python2.7/site-packages
    WSGIProcessGroup appapi

    WSGIScriptAlias / /var/www/wq2a-app-backend/main.py/

    AddType text/html .py

    <Directory /var/www/wq2a-app-backend/>
        Order deny,allow
        Allow from all
    </Directory>
    Alias /static /var/www/wq2a-app-backend/static/
    <Directory /var/www/wq2a-app-backend/static/>
        Order deny,allow
        Allow from all
    </Directory>
</VirtualHost>
