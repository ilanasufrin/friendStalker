class AddAttributesToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :pic, :string
  end
end
