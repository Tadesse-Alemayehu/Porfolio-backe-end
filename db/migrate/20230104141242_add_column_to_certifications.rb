class AddColumnToCertifications < ActiveRecord::Migration[7.0]
  def change
    add_column :certifications, :from, :string
  end
end
