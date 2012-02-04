class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name, :default => ""
      t.text :description, :default => ""

      t.timestamps
    end
    add_index(:nodes, :name)
  end
end
