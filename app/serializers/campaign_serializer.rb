class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :players
  has_one :user
end
