class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :mobile_pic
      t.string :desktop_pic
      t.string :source_code
      t.string :live_link

      t.timestamps
    end
  end
end
