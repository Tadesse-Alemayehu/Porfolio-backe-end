class AddColumnToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :phone_number, :string
  end
end
