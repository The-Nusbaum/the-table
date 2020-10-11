class Api::V1::CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def index
    @campaigns = Campaign.order("created_at DESC");
    render json: @campaigns
  end

  def show
    render json: @campaign
  end

  def create
    @campaign = Campaign.create!(campaign_params)
    render json: @campaign
  end

  def update
    @campaign.update(campaign_params)
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      CampaignSerializer.new(@player)
      ).serializable_hash
    #ActionCable implementation here
    render json: @campaign
  end

  def destroy
    @campaign.destroy
    render json: @campaign
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campaign_params
      params.require(:campaign).permit(:name)
    end
end