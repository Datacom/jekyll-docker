FROM phusion/passenger-ruby21

ENV LANG en_US.UTF-8

# Copy webapp
RUN mkdir /home/app/webapp
ADD site /home/app/webapp/

WORKDIR /home/app/webapp

# Build app
RUN bundle install
RUN jekyll build

# Add runit script to run unicorn
ADD unicorn.sh /etc/service/unicorn/run

# Expose the default port for unicorn
EXPOSE 8080

CMD ["/sbin/my_init"]
