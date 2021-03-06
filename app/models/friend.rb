class Friend < ActiveRecord::Base
  after_validation :geocode,
    if: lambda{|obj| obj.location_changed?}
  geocoded_by :location

  has_many :friendships
  has_many :users, through: :friendships
  has_many :texts, foreign_key: :f_id
  has_many :us, through: :texts

  def knows(user)
    self.friendships.find_by(user_id: user.id)
  end

end
