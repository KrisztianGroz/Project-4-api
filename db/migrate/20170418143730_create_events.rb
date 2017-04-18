class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.string :image
      t.string :fighter
      t.float :time
      t.string :winner
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
