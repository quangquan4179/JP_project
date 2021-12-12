json.extract! player, :id, :name, :birthday, :country, :height, :weight, :club, :created_at, :updated_at
json.url player_url(player, format: :json)
