class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.float :price
      t.text :description
      t.text :location

      t.timestamps
    end
  end
end
