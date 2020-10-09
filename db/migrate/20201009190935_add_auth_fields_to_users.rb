class AddAuthFieldsToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :google_token, :string
    add_column :users, :google_refresh_token, :string
    add_column :users, :email, :string
    add_column :users, :user_name, :string
  end

  def down
    remove_column :users, :google_token
    remove_column :users, :google_refresh_token
    remove_column :users, :email
    remove_column :users, :user_name
  end
end
