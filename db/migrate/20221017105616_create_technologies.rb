class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name, :unique =>  true
      t.string :icon
      t.integer :skill_level

      t.timestamps
    end
  end
end
