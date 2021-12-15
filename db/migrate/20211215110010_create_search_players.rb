class CreateSearchPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :search_players do |t|
      t.string :player_name
      t.date :birthday
      t.string :country
      t.numeric :min_height
      t.numeric :max_height
      t.numeric :min_weight
      t.numeric :max_weight
      t.string :club

      t.timestamps
    end
  end
end
