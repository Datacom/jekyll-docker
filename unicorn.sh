#!/bin/sh
cd /home/app/webapp
exec chpst -u app bundle exec unicorn -c unicorn.rb -p 80 >> /var/log/unicorn.log 2>&1
