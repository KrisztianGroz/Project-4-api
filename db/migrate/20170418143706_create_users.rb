class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :photo
      t.string :firstname
      t.string :lastname
      t.string :motto
      t.string :skill
      t.integer :victory
      t.integer :lose

      t.timestamps
    end
  end
end
