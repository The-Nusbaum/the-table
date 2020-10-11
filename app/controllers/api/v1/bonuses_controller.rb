class Api::V1::BonusesController < ApplicationController
  before_action :set_bonus, only: [:show, :edit, :update, :destroy]

  def index
    @bonuses = Bonus.order("created_at DESC");
    render json: @bonuses
  end

  def show
    render json: @bonus
  end

  def create
    @bonus = Bonus.create!(bonus_params)
    render json: @bonus
  end

  def update
    @bonus.update(bonus_params)
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      BonuseSerializer.new(@player)
      ).serializable_hash
    #ActionCable implementation here
    render json: @bonus
  end

  def destroy
    @bonus.destroy
    render json: @bonus
  end

  private

  def set_bonus
    @bonus = Bonus.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bonus_params
    params.require(:bonus).permit(:name)
  end
end