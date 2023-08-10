class Subscription < ApplicationRecord
  has_many :user_subscription, dependent: :destroy
  has_many :user, through: :user_subscription
end
