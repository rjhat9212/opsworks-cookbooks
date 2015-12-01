#
# Cookbook Name:: livible_cron
# Recipe:: default
#
# Copyright 2015, Livible LLC
#
# All rights reserved - Do Not Redistribute
#
cron "delivery_slots" do
  hour "8"
  minute "0"
  command "cd /srv/www/livible_qa_with_workers/current && /usr/local/bin/bundle exec rake timeslots:generate"
end
cron "transactions_to_processing" do
  hour "15"
  minute "0"
  command "cd /srv/www/livible_qa_with_workers/current && /usr/local/bin/bundle exec rake transactions:process"
end
cron "latest_active" do
  hour "7"
  minute "36"
  command "cd /srv/www/livible_qa_with_workers/current && /usr/local/bin/bundle exec rake users:last_active"
end
