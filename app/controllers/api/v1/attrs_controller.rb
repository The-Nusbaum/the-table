class Api::V1::AttrsController < ApplicationController
  before_action :set_attr, only: [:show, :edit, :update, :destroy]

  def index
    @attrs = Attr.order("created_at DESC");
    render json: @attrs
  end

  def show
    render json: @attr
  end

  def create
    @attr = Attr.create!(attr_params)
    render json: @attr
  end

  def update
    @attr.update(attr_params)
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      AttrSerializer.new(@player)
      ).serializable_hash
    #ActionCable implementation here
    render json: @attr
  end

  def destroy
    @attr.destroy
    render json: @attr
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attr
      @attr = Attr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attr_params
      params.require(:attr).permit(:name)
    end
end

