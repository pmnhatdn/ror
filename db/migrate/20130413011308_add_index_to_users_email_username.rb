class AddIndexToUsersEmailUsername < ActiveRecord::Migration
  def change
	  add_index :users, [:username, :email]#only
  end
end
