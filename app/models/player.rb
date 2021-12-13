class Player < ApplicationRecord
    has_one_attached :image
    has_many :player_review, -> { order "created_at DESC"}
    has_many :transfer_history, -> { order "created_at DESC"}
end
