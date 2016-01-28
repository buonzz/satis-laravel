Satis fo Laravel Dependencies
=============================

This is a specialized version of Satis, since it is configured specifically to provide you a local mirror of Laravel Package dependendencies in your local Homestead box.


## Why?

* You want to be able to develop Laravel projects (composer install/composer update)  even without Internet connection
* Failover in case GitHub is down
* Speed - fetching dependencies might be slow when fetching it all over the network, local access is extremely fast


Installation
------------

You need to install [Homestead](https://laravel.com/docs/5.2/homestead) first in your local machine.
Login to your Homestead box and clone the repository:

```
homestead up;homestead ssh
cd ~/Code
git clone https://github.com/buonzz/satis-laravel.git
cd satis-laravel
```

Fetch the dependencies of Satis

```
composer install
```

Build the mirror files

```
./build.sh
```

this might take a long time to fetch all the dependencies, so grab some coffee first :)


