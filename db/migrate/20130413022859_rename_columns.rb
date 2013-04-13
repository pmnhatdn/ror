class RenameColumns < ActiveRecord::Migration
  def up
  	rename_column(:users, :password_confirmmation, :password_confirmation)
  	rename_column(:users, :password_token, :remember_token)
  end

  def down
  end
end
