class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :parent
end
