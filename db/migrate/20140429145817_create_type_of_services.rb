class CreateTypeOfServices < ActiveRecord::Migration
  def change
    create_table :type_of_services do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
