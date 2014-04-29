class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.integer :type_of_service_id

      t.timestamps
    end
  end
end
