class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :u_id
      t.string :u_phone
      t.integer :f_id
      t.string :f_name
      t.string :f_loc

      t.timestamps
    end
  end
end
