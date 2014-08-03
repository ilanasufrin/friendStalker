class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.float :lat
      t.float :lon
      t.string :phone

      t.timestamps
    end
  end
end
