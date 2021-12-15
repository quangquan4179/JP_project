class SearchPlayersController < ApplicationController
  before_action :set_search_player, only: %i[ show edit update destroy ]
  before_action :get_players

  # GET /search_players or /search_players.json
  def index
    @search_players = SearchPlayer.all
  end

  # GET /search_players/1 or /search_players/1.json
  def show
    @search_players = SearchPlayer.find(params[:id])
  end

  # GET /search_players/new
  def new
    @search_player = SearchPlayer.new
  end

  # GET /search_players/1/edit
  def edit
  end

  # POST /search_players or /search_players.json
  def create
    @search_player = SearchPlayer.new(search_player_params)

    respond_to do |format|
      if @search_player.save
        format.html { redirect_to @search_player, notice: "Search player successfully." }
        format.json { render :show, status: :created, location: @search_player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @search_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_players/1 or /search_players/1.json
  def update
    respond_to do |format|
      if @search_player.update(search_player_params)
        format.html { redirect_to @search_player, notice: "Search player was successfully updated." }
        format.json { render :show, status: :ok, location: @search_player }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @search_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_players/1 or /search_players/1.json
  def destroy
    @search_player.destroy
    respond_to do |format|
      format.html { redirect_to search_players_url, notice: "Search player was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_player
      @search_player = SearchPlayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def search_player_params
      params.require(:search_player).permit(:player_name, :birthday, :country, :min_height, :max_height, :min_weight, :max_weight, :club)
    end
    
    def get_players
        @players = Player.all
    end
end
