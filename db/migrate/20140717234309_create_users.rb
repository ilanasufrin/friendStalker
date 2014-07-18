class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :facebook_id
      t.integer :twitter_id
      t.string :phone

      t.timestamps
    end
  end
end
