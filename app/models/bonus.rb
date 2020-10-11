class Bonus < ApplicationRecord
  self.table_name = "bonuses"
  # belongs_to :parent
  belongs_to :attr, class_name: "Attr", foreign_key: "attr_id"
end
