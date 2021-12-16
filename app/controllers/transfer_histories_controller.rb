class TransferHistoriesController < ApplicationController
  before_action :get_player 
  before_action :set_transfer_history, only: %i[ show edit update destroy ]

  # GET /transfer_histories or /transfer_histories.json
  def index
    @transfer_histories = @player.transfer_history
  end

  # GET /transfer_histories/1 or /transfer_histories/1.json
  def show
  end

  # GET /transfer_histories/new
  def new
    @transfer_history = @player.transfer_history.build
  end

  # GET /transfer_histories/1/edit
  def edit
  end

  # POST /transfer_histories or /transfer_histories.json
  def create
    @transfer_history = @player.transfer_history.build(transfer_history_params)
    @transfer_history.user_id = current_user.id

    respond_to do |format|
      if @transfer_history.save
        url = "/players/" + @player.id.to_s
        format.html { redirect_to url, notice: "譲渡の歴史が作成されました。" }
        format.json { render :show, status: :created, location: @transfer_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transfer_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transfer_histories/1 or /transfer_histories/1.json
  def update
    respond_to do |format|
      if @transfer_history.update(transfer_history_params)
        format.html { redirect_to player_transfer_histories_path(@player), notice: "Transfer history was successfully updated." }
        format.json { render :show, status: :ok, location: @transfer_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transfer_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transfer_histories/1 or /transfer_histories/1.json
  def destroy
    @transfer_history.destroy
    respond_to do |format|
      format.html { redirect_to player_transfer_histories_path(@player), notice: "Transfer history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer_history
      @transfer_history = TransferHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transfer_history_params
      params.require(:transfer_history).permit(:old_club, :new_club, :day, :note, :player_id)
    end
    
    def get_player
        @player = Player.find_by_id(params[:player_id])
    end
end
