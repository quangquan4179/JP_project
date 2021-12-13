class CreateTransferHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :transfer_histories do |t|
      t.integer :user_id
      t.text :old_club
      t.text :new_club
      t.date :day
      t.text :note
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
