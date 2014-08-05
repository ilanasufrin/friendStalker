class Text < ActiveRecord::Base

  belongs_to :u, class_name: 'User'
  belongs_to :f, class_name: 'Friend'

end
