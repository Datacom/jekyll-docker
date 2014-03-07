jekyll-docker
=============

Runs a rack-jekyll app on Unicorn inside a docker container based on passenger-docker.

To use, check out your site into site, e.g.

    git clone https://github.com/me/mysite site

Then run ```sudo docker build -t yourtag .``` to build it. The build process will run bundle update and jekyll build, producing a ready-to-go image.

To run your image and have it listen on port 80,

    sudo docker run -d -p 80:8080 yourtag

If you wanted to put a load balancer / reverse proxy in front, you'd want to map it to a port other than 80.
