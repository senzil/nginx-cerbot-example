# nginx-certbot-example
Simple example for nginx reverse proxy with ssl termination

## How to use.
This is just a simple example of how to create a docker image to run a certbot side by side with nginx to provide an ssl termination endpoint that you can use for test infraestructure or make some DevSecOps penetretion testing maybe.

Of course you can deploy it in a pod in kubernetes providing an robust unit for serve static or dynamic content but distributed along all your infraestructure in a consistent way.

The nginx.conf is just an example, you must change the 100-auto-renew-certs.sh providing your own domains and email, the same for nginx.conf.
When you run it, you can mount this files from ahother source to override your defaults
