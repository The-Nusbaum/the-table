class Api::V1::RacesController < ApplicationController
  before_action :set_race, only: [:show, :edit, :update, :destroy]

  def index
    @races = Race.order("created_at DESC");
    render json: @races
  end

  def show
    render json: @race
  end

  def create
    @race = Race.create!(race_params)
    render json: @race
  end

  def update
    @race.update(race_params)
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      RaceSerializer.new(@player)
      ).serializable_hash
    #ActionCable implementation here
    render json: @race
  end

  def destroy
    @race.destroy
    render json: @race
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def race_params
      params.require(:race).permit(:name)
    end
end