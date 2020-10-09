class PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /api/V1/players
  def index
    @players = Player.order("created_at DESC");
    render json: @players
  end

  # GET /api/V1/players/1
  def show
    @player = Player.find(params[:id])
    render json: @player
  end

  # POST /api/V1/players
  def create
    @player = Player.create!(player_params)
    render json: @player
  end

  # PUT /api/V1/players/1
  def update
    @player = Player.find(params[:id])
    @player.update_attributes(player_params)
    render json: @player
  end

  # DELETE /api/V1/players/1
  def destroy
    @player.destroy
    render json: @player
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:thingy)
    end
end
