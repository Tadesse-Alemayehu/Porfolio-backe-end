class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :email
      t.string :phone_no
      t.integer :po_box

      t.timestamps
    end
  end
end
