class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :u_id
      t.string :u_phone
      t.integer :f_id
      t.string :f_update

      t.timestamps
    end
  end
end
