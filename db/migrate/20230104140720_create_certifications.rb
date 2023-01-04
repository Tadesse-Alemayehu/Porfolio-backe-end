class CreateCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :certifications do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
