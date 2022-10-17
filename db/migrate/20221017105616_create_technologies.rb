class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :icon
      t.string :skill_level

      t.timestamps
    end
  end
end
