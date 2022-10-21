class Technology < ApplicationRecord
  has_and_belongs_to_many :projects

  validates :skill_level, length: { minimum: 1, maximum: 10 }
  validates :skill_level, presence: true
  validates :name, presence: true

end
