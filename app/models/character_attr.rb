class CharacterAttr < ApplicationRecord
  belongs_to :character
  has_many :attrs, class_name: "Attr", foreign_key: "attr_id"
end
