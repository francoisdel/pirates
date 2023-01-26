class AddTypeToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :type, :string
  end
end
