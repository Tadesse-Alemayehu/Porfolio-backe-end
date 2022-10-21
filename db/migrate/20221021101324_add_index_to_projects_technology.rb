class AddIndexToProjectsTechnology < ActiveRecord::Migration[7.0]
  def change
    add_index :projects_technologies, [:project_id, :technology_id], :unique => true
    #Ex:- add_index("admin_users", "username")
  end
end
