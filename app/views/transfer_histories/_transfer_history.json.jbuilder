json.extract! transfer_history, :id, :user_id, :old_club, :new_club, :day, :note, :player_id, :created_at, :updated_at
json.url transfer_history_url(transfer_history, format: :json)
