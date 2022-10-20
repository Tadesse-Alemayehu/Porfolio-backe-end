class Project < ApplicationRecord
  has_and_belongs_to_many :technologies

  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :source_code, presence: true
end
