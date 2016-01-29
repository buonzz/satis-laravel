Satis for Laravel Dependencies
=============================

This is a specialized version of Satis, since it is configured specifically to provide you a local mirror of Laravel package dependendencies in your local Homestead box.


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

Once done, add this to the sites: section on the ~/.homestead/Homestead.yaml of your host machine:

```
    - map: packages.homestead.app
      to: /home/code/satis-laravel/web/dist
```

Then put this on your local hosts file so that you can access it from your machine.

```
192.168.10.10 packages.homestead.app
```

Once done, visit [http://packages.homestead.app](http://packages.homestead.app) on your web browser.
Congrats! you now have a local mirror of the repository!


## Usage

put this in the composer.json of your Laravel project

```
{
    "repositories": [
        {
            "type": "composer",
            "url": "http://packages.homestead.app"
        }
    ]
}
```

everytime you hit composer update/install, it will now use the local repository inside the Vagrant box.

