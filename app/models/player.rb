class Player < ApplicationRecord
    
    has_one_attached :image
    has_many :player_review, -> { order "created_at DESC"}
    has_many :transfer_history, -> { order "created_at DESC"}
    
    def self.search(player_name)
        if player_name
            where('name LIKE ?', "%#{player_name}%")
        else
            all
        end
    end
    
end
