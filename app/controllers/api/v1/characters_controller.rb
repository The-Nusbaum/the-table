class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.order("created_at DESC");
    render json: @characters
  end

  def show
    render json: @character
  end

  def create
    @character = Character.create!(character_params)
    render json: @character
  end

  def update
    @character.update(character_params)
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      CharacterSerializer.new(@player)
      ).serializable_hash
    #ActionCable implementation here
    render json: @character
  end

  def destroy
    @character.destroy
    render json: @character
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name)
    end
end