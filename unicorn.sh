#!/bin/sh
cd /home/app/webapp
exec chpst -u app bundle exec unicorn -c unicorn.rb >> /var/log/unicorn.log 2>&1
