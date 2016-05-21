class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :refid
      t.string :image_url
      t.string :position

      t.timestamps null: false
    end
  end
end
