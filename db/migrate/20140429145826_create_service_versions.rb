class CreateServiceVersions < ActiveRecord::Migration
  def change
    create_table :service_versions do |t|
      t.string :version
      t.date :dateBegin
      t.date :dateEnd
      t.integer :service_id

      t.timestamps
    end
  end
end
