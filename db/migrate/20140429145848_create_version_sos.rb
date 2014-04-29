class CreateVersionSos < ActiveRecord::Migration
  def change
    create_table :version_sos do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
