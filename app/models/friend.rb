class Friend < ActiveRecord::Base
  has_many :friendships
  has_many :users, through: :friendships
  has_many :subscriptions
  has_many :users, through: :subscriptions

  def knows(user)
    self.friendships.find_by(user_id: user.id)
  end

end
