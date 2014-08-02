class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.float :location
      t.float :latitude
      t.string :longitude
      t.integer :twitter_id

      t.timestamps
    end
  end
end
