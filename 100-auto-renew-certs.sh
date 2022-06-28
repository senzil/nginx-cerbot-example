echo '0 */12 * * * certbot certonly --webroot -w /var/www/certbot/ -d domain.example.org -d another.example.org --email youremail@yourdomain.com --agree-tos -v -n' > /etc/crontabs/root
crond -l 2 -b -L /var/log/crond/crond.log
certbot certonly --webroot -w /var/www/certbot/ -d domain.example.org -d another.example.org --email youremail@yourdomain.com --agree-tos -v -n
