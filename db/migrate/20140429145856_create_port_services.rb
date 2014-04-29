class CreatePortServices < ActiveRecord::Migration
  def change
    create_table :port_services do |t|
      t.integer :port_id
      t.integer :service_id

      t.timestamps
    end
  end
end
