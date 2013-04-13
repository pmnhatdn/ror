class AddIndexToEntries < ActiveRecord::Migration
  def change
	add_index :entries, [:user_id, :created_at]  
  end
end

