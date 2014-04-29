class CreateVulnerabilities < ActiveRecord::Migration
  def change
    create_table :vulnerabilities do |t|
      t.string :name
      t.string :description
      t.date :discovered
      t.integer :service_version_id
      t.integer :service_id

      t.timestamps
    end
  end
end
