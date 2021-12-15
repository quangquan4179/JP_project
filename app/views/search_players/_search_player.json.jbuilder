json.extract! search_player, :id, :player_name, :birthday, :country, :min_height, :max_height, :min_weight, :max_weight, :club, :created_at, :updated_at
json.url search_player_url(search_player, format: :json)
