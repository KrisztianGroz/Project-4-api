class CreateArenas < ActiveRecord::Migration[5.1]
  def change
    create_table :arenas do |t|
      t.string :name
      t.string :location
      t.string :event
      t.string :image
      t.string :intro
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
