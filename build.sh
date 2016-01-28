#! /bin/sh
rm -rf /home/vagrant/Code/satis-laravel/web/dist
mkdir /home/vagrant/Code/satis-laravel/web/dist 
php /home/vagrant/Code/satis-laravel/bin/satis build /home/vagrant/Code/satis-laravel/config.json /home/vagrant/Code/satis-laravel/web --no-interaction --skip-errors