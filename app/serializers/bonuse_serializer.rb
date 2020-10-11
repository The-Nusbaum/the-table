class BonuseSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :value
  has_one :parent
  has_one :attribute
end
