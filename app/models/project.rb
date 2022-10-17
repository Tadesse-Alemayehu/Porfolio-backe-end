class Project < ApplicationRecord
  has_many :technologies
  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :source_code, presence: true
  validates_associated :technologies, presence: true
  validates_associated :technologies, presence: true
  validates :technologies, length: { minimum: 1 }
  def technologies
    return super().length
  end
end
