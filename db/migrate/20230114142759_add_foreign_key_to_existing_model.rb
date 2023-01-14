class AddForeignKeyToExistingModel < ActiveRecord::Migration[7.0]
  def change
    add_reference :boats, :user, foreign_key: true
  end
end
