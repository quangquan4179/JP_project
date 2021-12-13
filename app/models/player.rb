class Player < ApplicationRecord
    has_one_attached :image
    has_many :player_review, -> { order "created_at DESC"}
end
