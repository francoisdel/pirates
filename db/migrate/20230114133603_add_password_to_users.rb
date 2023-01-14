class AddPasswordToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :Password, :string
  end
end
