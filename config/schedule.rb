# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# every :reboot do 
#   rake "fs:check_friends"
# end

# every :sunday, :at => '5:41pm' do # Use any day of the week or :weekend, :weekday
#   rake "fs:check_friends"
# end

# job_type :rake, "cd :path && :environment_variable=test bundle exec rake :task --silent :output"

every 1.minutes do 
  rake "wa:send_texts"
  # runner 'send.texts'
end

# Add your automated tasks here
# You need to update the crontab (cron table) before new tasks will fire
# Type 'whenever --update-crontab testing' in console to update the crontab
# crontab -l to see a list of all current cron jobs
# If you are logging messages to the console, view them with 'cat /var/mail/[user]'
# To clear logged messages, do 'echo "" > /var/mail/[user]'
# To really clear looged messages, cat /dev/null > /var/mail/[user]
# crontab -e - To edit the cron jobs.
# crontab -r  - To remove cron jobs.


