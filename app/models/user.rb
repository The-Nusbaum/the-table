class User < ApplicationRecord
  has_many :players
  has_many :campaigns

    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.user_name = auth.info.name
          user.email = auth.info.email
        end
    end
end
