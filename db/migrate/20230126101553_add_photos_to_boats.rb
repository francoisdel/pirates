class AddPhotosToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :photos, :string
  end
end
