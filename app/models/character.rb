class Character < ApplicationRecord
  belongs_to :player
  has_one :race
end
