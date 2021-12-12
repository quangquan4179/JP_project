class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.date :birthday
      t.string :country
      t.numeric :height
      t.numeric :weight
      t.string :club

      t.timestamps
    end
  end
end
