class AddStalkingToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :stalking, :boolean
  end
end
