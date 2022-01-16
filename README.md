# Laravel Docker

## Service
- nginx
- app (php-fpm)
- mysql
- redis
- adminer
- mailhog

## How to
- Setup your project in the root folder
- Run ```make up``` to spin up the containers
- Check ```Makefile``` to see prebuilt command that you can use

## Exposed Ports
- nginx ```:8000```
- mysql ```:3307```
- redis ```:6378```
- mailhog ```:6082```
- adminer ```:6080```

# Notes
- This docker setup not yet tested in production mode