class User < ApplicationRecord
  has_one :address
  validates :full_name, presence: true
  validates :full_name, length: { minimum: 2, maximum: 60 }
end
