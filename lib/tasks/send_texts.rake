
namespace :wa do
  desc "Test task"
  task :send_texts => :environment do
    User.all.each do |person|
      person.find_friends_within_range
    end
  end
end
