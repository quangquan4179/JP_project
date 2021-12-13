json.extract! player_review, :id, :user_id, :player_id, :review, :created_at, :updated_at
json.url player_review_url(player_review, format: :json)
