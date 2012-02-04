class CreateEdges < ActiveRecord::Migration
  def change
    create_table :edges do |t|
      t.integer :source_id
      t.integer :sink_id
      t.integer :edge_type_id
      t.string :name, :default => ""
      t.text :description, :default => ""
      t.timestamps
    end
    add_index(:edges, :source_id)
    add_index(:edges, :sink_id)    

  end
end
