class User < ApplicationRecord
  has_one :user_subscription, dependent: :destroy
  has_one :subscription, through: :user_subscription
end
