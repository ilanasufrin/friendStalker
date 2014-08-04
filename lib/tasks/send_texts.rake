namespace :wa do
  desc "Test task"
  task :send_texts => :environment do
    User.all.each do |person|
      person.send_text_updates
    end
  end
end