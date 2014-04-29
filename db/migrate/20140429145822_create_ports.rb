class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.integer :number
      t.string :description

      t.timestamps
    end
  end
end
