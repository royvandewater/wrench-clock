class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :mileage

      t.timestamps
    end
  end
end
