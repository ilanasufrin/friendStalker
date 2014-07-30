class AddAttributesToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :pic, :string
    add_column :friends, :geo_enabled, :boolean
  end
end
