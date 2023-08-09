class Subscription < ApplicationRecord
  has_one :user_subscription, dependent: :destroy
  has_one :user, through: :user_subscription
end
