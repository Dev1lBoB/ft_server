# ft_server
Introduction to system administration and Docker

Mandatory part:
-  The web server must be setted up with Nginx, in only one docker container. The
container OS must be debian buster.
- Web server must be able to run several services at the same time. The services
will be a WordPress website, phpMyAdmin and MySQL. You will need to make
sure your SQL database works with the WordPress and phpMyAdmin.
- Server should be able to use the SSL protocol.
- You will have to make sure that, depending on the url, your server redirects to the
correct website.
- You will also need to make sure your server is running with an autoindex that must
be able to be disabled.

To start the server you need to turn on docker and then simply execute file "start.sh" in the srcs directory.
To change autoindex to "on/off" execute "index.sh".
