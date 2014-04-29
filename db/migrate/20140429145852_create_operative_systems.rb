class CreateOperativeSystems < ActiveRecord::Migration
  def change
    create_table :operative_systems do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
