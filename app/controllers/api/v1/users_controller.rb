class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.order("created_at DESC");
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create!(user_params)
    render json: @user
  end

  def update
    @user.update(user_params)
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      UserSerializer.new(@player)
      ).serializable_hash
    #ActionCable implementation here
    render json: @user
  end

  def destroy
    @user.destroy
    render json: @user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
    end
end