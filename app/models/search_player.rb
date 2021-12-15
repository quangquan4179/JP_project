class SearchPlayer < ApplicationRecord
    
    def search
        @players = Player.all
        
        @players = @players.where(["name LIKE ?", "%#{player_name}%"]) if player_name.present?
        # @players = @players.where(["CAST(birthday AS text) LIKE ?", "%#{birthday}%"]) if birthday.present?
        @players = @players.where(["country LIKE ?", "%#{country}%"]) if country.present?
        
        # @players = @players.where(["height >= ?", "%#{min_height}%"]) if min_height.present?
        # @players = @players.where(["height <= ?", "%#{max_height}%"]) if max_height.present?
        
        # @players = @players.where(["weight >= ?", "%#{min_weight}%"]) if min_weight.present?
        # @players = @players.where(["weight <= ?", "%#{max_weight}%"]) if max_weight.present?
        
        @players = @players.where(["club LIKE ?", "%#{club}%"]) if club.present?
        
        return @players
    end
    
end
