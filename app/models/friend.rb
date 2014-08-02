class Friend < ActiveRecord::Base
  after_validation :geocode,
    if: lambda{|obj| obj.location_changed?}
  geocoded_by :location

  has_many :friendships
  has_many :users, through: :friendships

  def knows(user)
    self.friendships.find_by(user_id: user.id)
  end

end
