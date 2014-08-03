class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :twitter_id

      t.timestamps
    end
  end
end
