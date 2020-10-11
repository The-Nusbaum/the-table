class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :race, :name
  has_one :player
end
