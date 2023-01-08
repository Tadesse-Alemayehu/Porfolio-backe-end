class CreateTestimonies < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonies do |t|
      t.string :name
      t.string :title
      t.string :image
      t.string :testimony
      t.string :email
      t.string :linkedin
      t.string :twitter
      t.string :github

      t.timestamps
    end
  end
end
