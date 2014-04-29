class CreateServiceVersionSos < ActiveRecord::Migration
  def change
    create_table :service_version_sos do |t|
      t.integer :version_so_id
      t.integer :service_id

      t.timestamps
    end
  end
end
