class AddHashColumnToCertifications < ActiveRecord::Migration[7.0]
  def change
    add_column :certifications, :picture_hash, :string
  end
end
