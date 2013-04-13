class AddIndexToEntries < ActiveRecord::Migration
  def self.up
    add_index :entries, [:user_id, :created_at] 
  end

  def self.down
    remove_index :entries, [:user_id, :created_at] 
  end
  
end

