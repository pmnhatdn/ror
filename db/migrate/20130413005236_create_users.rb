class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :fullname
      t.string :password_confirmmation
      t.string :password_token

      t.timestamps
    end
  end
end
