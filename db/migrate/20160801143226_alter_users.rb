class AlterUsers < ActiveRecord::Migration[5.0]
  def up
  	rename_table("users", "admin_users")
  	#rename_table reversible
  	add_colum("admin_users", "username", :string, :limit=>25,  :after => "email")
  	change_column("admin_users", "email", :string, :limit =>100)
  	rename_column("admin_users", "password", "hashed_password")
  	puts "*****adding an index is next"
  	add_index("admin_users", "username")
  end

  def down
  	remove_index("admin_users", "username")
  	rename_column("admin_users", "hashed_password", "password")
  	change_column("admin_users", "email", :string, :default => "", :null => false)
  	remove_colum("admin_users", "username", :string, :limit=>25,  :after => "email")
  	rename_table("admin_users", "users")


  end
end
