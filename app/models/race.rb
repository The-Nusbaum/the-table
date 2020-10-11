class Race < ApplicationRecord
  has_many :subrace , class_name: 'Race', foreign_key: "parent_id"
  has_many :bonus, -> { where(type: 'racial') }, class_name: 'Bonus'
end
