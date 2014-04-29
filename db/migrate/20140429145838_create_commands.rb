class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :instruction
      t.string :description
      t.integer :vulnerability_id
      t.integer :tool_id

      t.timestamps
    end
  end
end
