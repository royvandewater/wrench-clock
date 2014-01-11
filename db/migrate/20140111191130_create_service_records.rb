class CreateServiceRecords < ActiveRecord::Migration
  def change
    create_table :service_records do |t|
      t.integer :vehicle_id
      t.string :name
      t.integer :mileage

      t.timestamps
    end
    add_index :service_records, :vehicle_id
  end
end
