class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :user_id
      t.string :content

      t.timestamps
    end
  end
end
