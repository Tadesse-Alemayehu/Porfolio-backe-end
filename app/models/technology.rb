class Technology < ApplicationRecord
  validates :skill_level, length: { minimum: 1, maximum: 10 }
  validates :skill_level, presence: true
  validates :name, presence: true
  def name=(name)
    name.downcase!
    name.sub!(name[0], name[0].upcase!)
    super(name)
  end
end
