class Friend < ActiveRecord::Base
  has_many :friendships
  has_many :users, through: :friendships
end
