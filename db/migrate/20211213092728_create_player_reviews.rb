class CreatePlayerReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :player_reviews do |t|
      t.integer :user_id
      t.integer :player_id
      t.text :review

      t.timestamps
    end
  end
end
